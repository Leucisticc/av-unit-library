"""Assemble the unit list (passives, abilities, familiars) from raw modules."""
from __future__ import annotations

import json
import re
from pathlib import Path

from fetch import RAW_DIR, raw_path
from luaparse import parse_module

# Rich-text tokens: ⟦kind|a|b⟧ — the page renders them with icons/colours; the plain
# text (what the tagger and search see) keeps only the visible words.
_T = "\u27e6"   # ⟦
_E = "\u27e7"   # ⟧
_RE_SPACES = re.compile(r"[ \t]+")
_SUBS = [
    (re.compile(r"\{\{Effects\|([^|}]+)(?:\|([^}]*))?\}\}"), lambda m: (f"{_T}fx|{m.group(1).strip()}|{(m.group(2) or m.group(1)).strip()}{_E}", (m.group(2) or m.group(1)).strip())),
    (re.compile(r"<effect=([^>]+)>(.*?)</effect>"), lambda m: (f"{_T}fx|{m.group(1).strip()}|{m.group(2).strip()}{_E}", m.group(2).strip())),
    (re.compile(r"\{\{Element\|([^|}]+)\}\}"), lambda m: (f"{_T}el|{m.group(1).strip()}{_E}", m.group(1).strip())),
    (re.compile(r"<element=([^>]+)>(.*?)</element>"), lambda m: (f"{_T}el|{m.group(1).strip()}{_E}", m.group(2).strip())),
    (re.compile(r"\{\{Group\|([^|}]+)\}\}"), lambda m: (f"{_T}grp|{m.group(1).strip()}|{_split_camel(m.group(1).strip())}{_E}", _split_camel(m.group(1).strip()))),
    (re.compile(r"\{\{Rarity\|([^|}]+)\|([^}]*)\}\}"), lambda m: (f"{_T}rar|{m.group(1).strip()}|{m.group(2).strip()}{_E}", m.group(2).strip())),
    (re.compile(r"\{\{ColorText\|([^|}]+)\|text=([^}]*)\}\}"), lambda m: (f"{_T}ct|{m.group(1).strip()}|{m.group(2).strip()}{_E}", m.group(2).strip())),
    (re.compile(r"\{\{PassiveRef\|([^|}]+)\}\}"), lambda m: (f"{_T}ref|{m.group(1).strip()}{_E}", m.group(1).strip())),
    (re.compile(r"\{\{[^}]*\}\}"), lambda m: ("", "")),
    (re.compile(r"<numcolor>(.*?)</numcolor>"), lambda m: (f"{_T}num|{m.group(1)}{_E}", m.group(1))),
    (re.compile(r"<color=([0-9a-fA-F]{6})>(.*?)</color>"), lambda m: (f"{_T}c|{m.group(1)}|{m.group(2)}{_E}", m.group(2))),
    (re.compile(r"</?(?:color|numcolor|b|i|font)[^>]*>"), lambda m: ("", "")),
    (re.compile(r"<br\s*/?>"), lambda m: ("\n", "\n")),
]


def _split_camel(s: str) -> str:
    return re.sub(r"(?<=[a-z])(?=[A-Z])", " ", s)


def _join_lines(s: str) -> str:
    lines = [_RE_SPACES.sub(" ", ln).strip() for ln in s.split("\n")]
    lines = [ln for ln in lines if ln]
    # The wiki wraps some effect words in their own line ("Attacks\nStun\nenemies").
    # Keep a line break only before a bullet or after a heading-like line ("Attacks:").
    out: list[str] = []
    for ln in lines:
        if out and not ln.startswith("•") and not out[-1].endswith(":"):
            out[-1] = out[-1] + " " + ln
        else:
            out.append(ln)
    return "\n".join(out)


# The wiki's page renderer (Module:UnitPage autoTagKeywords) turns bare effect and
# element words into icons and colours numbers; mirror that in `rich`.
_EFFECT_WORDS = {
    "Bleed": "Bleed", "Bleeds": "Bleed", "Bled": "Bleed", "Bleeding": "Bleed",
    "Burn": "Burn", "Burns": "Burn", "Burned": "Burn", "Burning": "Burn",
    "Freeze": "Freeze", "Freezes": "Freeze", "Freezed": "Freeze", "Freezing": "Freeze", "Frozen": "Freeze",
    "Slow": "Slow", "Slows": "Slow", "Slowed": "Slow", "Slowing": "Slow",
    "Stun": "Stun", "Stuns": "Stun", "Stunned": "Stun", "Stunning": "Stun",
    "Repulse": "Repulse", "Repulses": "Repulse", "Repulsed": "Repulse", "Repulsing": "Repulse",
    "Nullify": "Nullify", "Nullifies": "Nullify", "Nullified": "Nullify", "Nullifying": "Nullify",
    "Cleave": "Cleave", "Cleaved": "Cleave", "Cleaves": "Cleave", "Cleaving": "Cleave",
    "Time Stop": "Time Stop", "Time Stops": "Time Stop", "Time Stopped": "Time Stop", "Timestop": "Time Stop", "Timestops": "Time Stop", "Timestopped": "Time Stop",
    "Absolute Zero": "Absolute Zero", "Aura of Corruption": "Aura of Corruption", "Purgatory Flames": "Purgatory Flames",
    "Black Flame": "Black Flame", "Black Flames": "Black Flame", "Intense Burn": "Intense Burn", "Infinite Spin": "Infinite Spin",
    "Conflagration": "Conflagration", "Frostburn": "Frostburn", "Affection": "Affection", "Petrified": "Petrified", "Petrify": "Petrified",
    "Wounded": "Wounded", "Rupture": "Rupture", "Ruptured": "Rupture", "Bubbled": "Bubbled", "Tethered": "Tethered", "Diseased": "Diseased",
    "Scorched": "Scorched", "Despair": "Despair", "Conduit": "Conduit", "Wanted": "Wanted", "Confusion": "Confusion", "Confuses": "Confusion",
    "Slumber": "Slumber", "Chaos": "Chaos", "Dismantle": "Dismantle", "Stone": "Stone", "Stoned": "Stone", "Destruction": "Destruction",
    "Corruption": "Corruption", "Opportunity": "Opportunity", "Primed": "Primed", "Chained": "Chained",
}
_ELEMENT_WORDS = ["Spark", "Nature", "Water", "Fire", "Holy", "Passion", "Curse", "Blast", "Cosmic", "Unbound"]
_RE_TOKEN = re.compile(_T + r"[^" + _E + r"]*" + _E)
_RE_AUTO = re.compile(
    r"\b(" + "|".join(sorted((re.escape(w) for w in _EFFECT_WORDS), key=len, reverse=True)) + r")\b"
    + r"|\b(" + "|".join(_ELEMENT_WORDS) + r")\b(?= (?:units?|allies|ally|element|damage|dmg|towers?|category|attacks?|DoT))"
    + r"|(?<![\w<>])([+-]?\d+(?:\.\d+)?%?)(?![\w<>%])",
    re.I,
)


def _auto_tag(rich: str) -> str:
    """Wrap bare effect words, element names (when used as a category) and numbers in
    tokens, leaving existing tokens untouched. Visible text is unchanged."""
    parts, i = [], 0
    for tok in _RE_TOKEN.finditer(rich):
        parts.append(_auto_tag_text(rich[i:tok.start()]))
        parts.append(tok.group(0))
        i = tok.end()
    parts.append(_auto_tag_text(rich[i:]))
    return "".join(parts)


def _auto_tag_text(text: str) -> str:
    def rep(m):
        if m.group(1):
            key = next(k for k in _EFFECT_WORDS if k.lower() == m.group(1).lower())
            return f"{_T}fx|{_EFFECT_WORDS[key]}|{m.group(1)}{_E}"
        if m.group(2):
            el = next(e for e in _ELEMENT_WORDS if e.lower() == m.group(2).lower())
            return f"{_T}el|{el}|{m.group(2)}{_E}"
        return f"{_T}num|{m.group(3)}{_E}"
    return _RE_AUTO.sub(rep, text)


def clean_both(s: str) -> tuple[str, str]:
    """Return (plain, rich). Same words, same line breaks; rich keeps markup tokens."""
    s = s.replace("\\n", "\n").replace("\\t", "\t")
    plain, rich = s, s
    for rx, fn in _SUBS:
        rich = rx.sub(lambda m: fn(m)[0], rich)
        plain = rx.sub(lambda m: fn(m)[1], plain)
    return _join_lines(plain), _auto_tag(_join_lines(rich))


def clean_text(s: str) -> str:
    return clean_both(s)[0]


def slugify(name: str) -> str:
    return name.replace(" ", "_")


def _load(raw_dir: Path, module: str):
    p = raw_path(module, raw_dir)
    return parse_module(p.read_text(encoding="utf-8")) if p.exists() else {}


def _as_list(v) -> list:
    if v is None:
        return []
    return list(v) if isinstance(v, (list, tuple)) else [v]


def _passives(unit: dict, *, skip_unevolved_only: bool) -> list[dict]:
    out = []
    for p in _as_list(unit.get("passives")):
        if not isinstance(p, dict) or not p.get("name"):
            continue
        if skip_unevolved_only and p.get("unevolved_only"):
            continue
        plain, rich = clean_both(p.get("description", ""))
        out.append({"name": p["name"], "desc": plain, "rich": rich, "source": "unit", "tags": []})
    return out


GROUPS_EXTRA = Path(__file__).parent / "groups_extra.json"


def _extra_groups() -> dict[str, list[str]]:
    """Hand-maintained groups the wiki data lacks: {group id: [unit names]}. Base
    names match every evolution ("Ichiga" covers "Ichiga (Savior)")."""
    return json.loads(GROUPS_EXTRA.read_text(encoding="utf-8")) if GROUPS_EXTRA.exists() else {}


def build_units(raw_dir: Path = RAW_DIR) -> list[dict]:
    extra = _extra_groups()
    units = {**_load(raw_dir, "UnitData/customData"), **_load(raw_dir, "UnitData/data")}
    abilities = {**_load(raw_dir, "AbilityData/data"), **_load(raw_dir, "AbilityData/customData")}
    familiars = _load(raw_dir, "FamiliarData/data")
    evolved_of = _load(raw_dir, "EvolvedUnitsData/data")   # base -> evolved
    base_of = {v: k for k, v in evolved_of.items()}          # evolved -> base

    fam_by_unit: dict[str, list[dict]] = {}
    for fname, f in familiars.items():
        owner = f.get("exclusive_unit") if isinstance(f, dict) else None
        if not owner:
            continue
        for p in _as_list(f.get("passives")):
            if isinstance(p, dict) and p.get("name"):
                plain, rich = clean_both(p.get("description", ""))
                fam_by_unit.setdefault(owner, []).append({
                    "name": p["name"], "desc": plain, "rich": rich,
                    "source": "familiar", "familiar": fname, "tags": []})

    out = []
    for name, u in units.items():
        if not isinstance(u, dict) or name.endswith(" v1"):   # "Alocard v1": pre-rework duplicate
            continue
        is_evolved = name in base_of
        passives: list[dict] = []
        if is_evolved and base_of[name] in units:
            passives += _passives(units[base_of[name]], skip_unevolved_only=True)
        passives += _passives(u, skip_unevolved_only=False)
        passives += fam_by_unit.get(name, [])

        ab_names: list[str] = []
        for n in _as_list(u.get("ability")):
            if isinstance(n, str) and n not in ab_names:
                ab_names.append(n)
        for up in _as_list(u.get("upgrade")):
            if isinstance(up, dict):
                for n in _as_list(up.get("active_ability")):
                    if isinstance(n, str) and n not in ab_names:
                        ab_names.append(n)
        abils = []
        for n in ab_names:
            a = abilities.get(n) or {}
            plain, rich = clean_both(a.get("description", ""))
            abils.append({"name": n, "desc": plain, "rich": rich,
                          "cooldown": a.get("cooldown"), "cooldownType": a.get("cooldown_type"),
                          "tags": []})

        if not passives and not abils:
            continue  # element-combo placeholder rows ("BlastBlast"), nothing to read

        groups = _as_list(u.get("groups"))
        # "Ninjutsu" is a mechanic the wiki never lists as a group, but buffs target it.
        if any(re.search(r"\b(?:has|have) Ninjutsu\b|\bvia Ninjutsu\b", p["desc"]) for p in passives) and "Ninjutsu" not in groups:
            groups = groups + ["Ninjutsu"]
        base_name = name.split(" (")[0]
        for gid, members in extra.items():
            exact = any(mem == name or (mem.endswith(")") and mem == name) for mem in members)
            if (name in members or (base_name in members and not any(mem.startswith(base_name + " (") for mem in members))) and gid not in groups:
                groups = groups + [gid]

        out.append({
            "name": name,
            "slug": slugify(name),
            "rarity": u.get("rarity", "Unknown"),
            "elements": _as_list(u.get("elements")),
            # Derived from the evolution map; the wiki's own `state` field is unreliable
            # (newest units carry "No" even though they evolve).
            "state": "Evolved" if is_evolved else ("Unevolved" if name in evolved_of else "No evolution"),
            "evolvesFrom": base_of.get(name),
            "evolvesTo": evolved_of.get(name),
            "groups": groups,
            "towerType": u.get("tower_type"),
            "passives": passives,
            "abilities": abils,
            "tags": [],
        })
    out.sort(key=lambda x: x["name"].lower())
    return out


def build_memoria(raw_dir: Path = RAW_DIR) -> list[dict]:
    """Memoria: equippable items with a universal first passive and locked
    'Specialty' passives that only work on the named unit(s) / element(s)."""
    data = _load(raw_dir, "MemoriaData/data")
    out = []
    for name, mem in data.items():
        if not isinstance(mem, dict):
            continue
        excl_units = _as_list(mem.get("exclusive_units")) or _as_list(mem.get("exclusive_unit"))
        excl_units = [u for u in excl_units if isinstance(u, str)]
        excl_elems = [e for e in _as_list(mem.get("exclusive_elements")) if isinstance(e, str)]
        passives = []
        for p in _as_list(mem.get("passives")):
            if not isinstance(p, dict) or not p.get("name"):
                continue
            plain, rich = clean_both(p.get("description", ""))
            passives.append({"name": p["name"], "desc": plain, "rich": rich, "source": "memoria",
                             "specialty": bool(p.get("locked")), "tags": []})
        out.append({
            "kind": "memoria",
            "name": name,
            "slug": slugify(name),
            "rarity": mem.get("rarity", "Unknown"),
            "elements": excl_elems,          # what the Specialty passives need
            "exclusiveUnits": excl_units,
            "state": "Memoria",
            "groups": [],
            "baseAttack": mem.get("base_attack"),
            "baseRange": mem.get("base_range"),
            "passives": passives,
            "abilities": [],
            "tags": [],
        })
    out.sort(key=lambda x: x["name"].lower())
    return out
