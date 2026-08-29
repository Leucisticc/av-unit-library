"""Apply TAG_RULES + overrides.json to units.

Matching runs over the cleaned description only (never the passive name — a
unit called "Dot" must not tag `dot`). A hit is dropped when a NEGATION
("immune to", "removes"...) sits in the 40 chars before it within the same
clause, or when one of the rule's own `suppress` patterns matches the 60 chars
before it within the same sentence. The HTML page mirrors this logic in JS
for highlighting, so keep the two in step.
"""
from __future__ import annotations

import json
import re
from pathlib import Path

from tag_rules import BUFF_TARGET_ALIASES, ELEMENT_COLOR, NEGATIONS, TAG_RULES

OVERRIDES_PATH = Path(__file__).parent / "overrides.json"
NEG_WINDOW = 40
SUPPRESS_WINDOW = 60
_COMPILED = {tid: [re.compile(p, re.I) for p in r["patterns"]] for tid, r in TAG_RULES.items()}
_SUPPRESS = {tid: [re.compile(p, re.I) for p in r.get("suppress", [])] for tid, r in TAG_RULES.items()}
_NEG = [re.compile(p, re.I) for p in NEGATIONS]


def _clause_before(text: str, start: int, width: int, stops: str) -> str:
    window = text[max(0, start - width):start]
    cut = max(window.rfind(c) for c in stops)
    return window[cut + 1:] if cut >= 0 else window


_APPLY_VERB = re.compile(r"\b(?:inflicts?|appl(?:y|ies)|gains?|grants?|becomes?|buffs?)\b", re.I)


def _negated(window: str) -> bool:
    # "removes that Overshield and inflicts Wanted": an apply verb after the negation cancels it
    for n in _NEG:
        m = n.search(window)
        if m and not _APPLY_VERB.search(window[m.end():]):
            return True
    return False


def _dropped(text: str, start: int, tid: str) -> bool:
    if _negated(_clause_before(text, start, NEG_WINDOW, ".;\n")):
        return True
    sup = _SUPPRESS[tid]
    return bool(sup) and any(s.search(_clause_before(text, start, SUPPRESS_WINDOW, ".;")) for s in sup)


def tag_text(text: str) -> list[str]:
    found: list[str] = []
    for tid, pats in _COMPILED.items():
        if any(not _dropped(text, m.start(), tid) for pat in pats for m in pat.finditer(text)):
            found.append(tid)
    return found


_TARGET_RES = [
    # "buff [the damage of] [all] <phrase> [category] allies/units"
    re.compile(r"\bbuff(?:s|ing|ed)? (?:the )?(?:(?:damage|range|spa|attack speed|crit(?:ical)?(?: rate| damage| chance)?)(?: (?:and|&) (?:damage|range|crit(?:ical)?(?: rate| damage| chance)?))? )?(?:of )?(?:all |every |nearby |other )?([\w' -]{0,40}?) ?(?:category )?(?:allies|units|ally|unit|placements)\b", re.I),
    # "<phrase> allies/units [in range] gain/DMG +"
    re.compile(r"\b(?:all |every )?((?:(?!buff)[\w'-]+ ){0,3}?)(?:category )?(?:allies|units)(?: in (?:this unit'?s )?range)?(?: on the field)? (?:gain|gains|DMG \+|RNG \+|by \d)", re.I),
    # "for all <phrase> units in range"
    re.compile(r"\bfor all ((?:(?!buff)[\w'-]+ ){0,3}?)(?:allies|units)\b", re.I),
]
_TARGET_SELF = {"this", "this unit", "own", "its own", "itself", "self"}
_TARGET_NEG = re.compile(r"\b(?:stops?|stopped|no longer|cannot|can'?t|excluding|instead of|not)\s*$", re.I)
_TARGET_NOISE = {"", "that", "the", "both", "your", "own", "nearby", "self and all", "self", "self and", "the next", "next", "in", "all", "allies", "affected", "placed", "currently placed", "other", "assisted", "the assisted", "any", "any other"}
_ELEMENTS = {e.lower(): e for e in ELEMENT_COLOR if e != "Unknown"}


def buff_targets(text: str, groups: list[str]) -> list[str]:
    """Who an ally buff is aimed at: 'all', an element name, or a group id."""
    found: list[str] = []
    gmap = {g.lower(): g for g in groups}
    for i, rx in enumerate(_TARGET_RES):
        for m in rx.finditer(text):
            if _TARGET_NEG.search(_clause_before(text, m.start(), 30, ".;")):
                continue  # "stop buffing allies", "can no longer buff other units"
            phrase = m.group(1).strip().lower().replace("'s", "")
            parts = [p.strip() for p in re.split(r"\s+(?:and|&)\s+|,", phrase) if p.strip()] or [""]
            for part in parts:
                if part in _TARGET_SELF:
                    continue  # "buff this unit's damage" is a self buff, not a target
                if part in ("that", "their", "the"):
                    # antecedent: "Whenever a Ninjutsu unit is placed, buff that unit" -> Ninjutsu;
                    # "from an ally, buff that ally" -> all. Only known names count.
                    before = text[:m.start()]
                    before = before[max(before.rfind("."), before.rfind(";")) + 1:]
                    part = ""
                    for am in re.finditer(r"((?:[\w'-]+ ){1,3}?)(?:unit|ally|allies|units|character)\b", before, re.I):
                        words = am.group(1).strip().lower().split()
                        for k in range(min(3, len(words)), 0, -1):
                            cand = " ".join(words[-k:])
                            if cand in _ELEMENTS or cand in BUFF_TARGET_ALIASES or cand.replace(" ", "") in gmap:
                                part = cand
                                break
                if part in _TARGET_NOISE:
                    tid = "all"
                elif part in _ELEMENTS:
                    tid = _ELEMENTS[part]
                elif part in BUFF_TARGET_ALIASES:
                    tid = BUFF_TARGET_ALIASES[part]
                elif part.replace(" ", "") in gmap:
                    tid = gmap[part.replace(" ", "")]
                elif i == 0 and len(part.split()) <= 2:
                    tid = part.title()  # a named set we don't know (e.g. "Peroxide")
                else:
                    continue
                if tid not in found:
                    found.append(tid)
    return found


def load_overrides(path: Path = OVERRIDES_PATH) -> dict:
    return json.loads(path.read_text(encoding="utf-8")) if path.exists() else {}


def apply_tags(units: list[dict], overrides: dict) -> list[dict]:
    index: dict[str, dict] = {}
    all_groups = sorted({g for u in units for g in u["groups"]})
    for u in units:
        for entry in u["passives"] + u["abilities"]:
            entry["tags"] = tag_text(entry["desc"])
            entry["buffTargets"] = buff_targets(entry["desc"], all_groups) if "ally-buff" in entry["tags"] else []
            index[f"{u['name']}|{entry['name']}"] = entry

    for key, ov in overrides.items():
        if key not in index:
            raise ValueError(f"[Tag] Override key not found: {key}")
        for tid in ov.get("add", []) + ov.get("remove", []):
            if tid not in TAG_RULES:
                raise ValueError(f"[Tag] Unknown tag {tid!r} in override {key}")
        entry = index[key]
        tags = [t for t in entry["tags"] if t not in ov.get("remove", [])]
        tags += [t for t in ov.get("add", []) if t not in tags]
        entry["tags"] = tags
        if "buffTargets" in ov:
            entry["buffTargets"] = list(ov["buffTargets"])
        elif "ally-buff" in tags and not entry["buffTargets"]:
            entry["buffTargets"] = buff_targets(entry["desc"], all_groups) or ["Unspecified"]
        elif "ally-buff" not in tags:
            entry["buffTargets"] = []

    for u in units:
        seen: list[str] = []
        targets: list[str] = []
        for entry in u["passives"] + u["abilities"]:
            for t in entry["tags"]:
                if t not in seen:
                    seen.append(t)
            if "ally-buff" in entry["tags"] and not entry["buffTargets"]:
                entry["buffTargets"] = ["Unspecified"]
            for t in entry["buffTargets"]:
                if t not in targets:
                    targets.append(t)
        if "Swap" in u["groups"] and "swap" not in seen:
            seen.append("swap")   # unit-level mechanic tag, hand-confirmed list in groups_extra.json
        u["tags"] = seen
        u["buffTargets"] = targets
    return units
