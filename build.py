"""fetch -> parse -> model -> tag -> dist/index.html"""
from __future__ import annotations

import argparse
import base64
import json
import shutil
from datetime import datetime, timezone
from pathlib import Path

from fetch import fetch_all
from model import build_memoria, build_units
from tag import apply_tags, load_overrides
from tag_rules import ELEMENT_COLOR, ELEMENT_ICON, NEGATIONS, RARITY_STYLE, TAG_GROUPS, TAG_RULES

ROOT = Path(__file__).parent
ICON_DIR = ROOT / "data" / "icons"
TEMPLATE = ROOT / "template.html"
DIST = ROOT / "dist" / "index.html"
UNITS_JSON = ROOT / "data" / "units.json"


def _icon(name: str | None) -> str | None:
    if not name:
        return None
    p = ICON_DIR / name
    if not p.exists():
        raise SystemExit(f"[Build] Missing icon {name} — run fetch.py")
    return "data:image/png;base64," + base64.b64encode(p.read_bytes()).decode()


def make_data() -> dict:
    overrides = load_overrides()
    units = apply_tags(build_units(), overrides)
    memoria = apply_tags(build_memoria(), overrides, groups=sorted({g for u in units for g in u["groups"]}), prefix="memoria:")
    # Pictures ship as files next to index.html (447 units inlined would be ~10 MB of base64).
    for kind, items in (("units", units), ("memoria", memoria)):
        for it in items:
            it["icon"] = f"img/{kind}/{it['name']}.png" if (ICON_DIR / kind / f"{it['name']}.png").exists() else None
    return {
        "generated": datetime.now(timezone.utc).strftime("%Y-%m-%d"),
        "groups": TAG_GROUPS,
        # patterns ship to the page so it can highlight the span that earned each tag
        "tags": {tid: {"group": r["group"], "label": r["label"], "patterns": r["patterns"],
                       "suppress": r.get("suppress", []), "icon": _icon(r.get("icon"))}
                 for tid, r in TAG_RULES.items()},
        "negations": NEGATIONS,
        "rarity": RARITY_STYLE,
        "credits": {"avatar": _icon("credits_avatar.png"),
                    "icon": (ICON_DIR / "credits.svg").read_text(encoding="utf-8"),
                    "name": "Kouhaii", "role": "Developer & Designer",
                    "discord": "Kouhaii", "github": "https://github.com/Leucisticc"},
        "elements": {e: {"color": c, "icon": _icon(ELEMENT_ICON[e])} for e, c in ELEMENT_COLOR.items()},
        "stats": {"damage": _icon("stat_Damage.png"), "range": _icon("stat_Range.png"), "spa": _icon("stat_SPA.png")},
        "buffTargets": sorted({t for u in units + memoria for t in u["buffTargets"]}, key=lambda t: (t != "all", t)),
        "units": units,
        "memoria": memoria,
    }


def build(refresh: bool = False) -> Path:
    if refresh:
        fetch_all()
    data = make_data()
    UNITS_JSON.parent.mkdir(exist_ok=True)
    UNITS_JSON.write_text(json.dumps(data, ensure_ascii=False, indent=1), encoding="utf-8")
    payload = json.dumps(data, ensure_ascii=False, separators=(",", ":")).replace("</", "<\\/")
    html = TEMPLATE.read_text(encoding="utf-8").replace("/*__DATA__*/", payload)
    DIST.parent.mkdir(exist_ok=True)
    DIST.write_text(html, encoding="utf-8")
    for kind in ("units", "memoria"):
        src, dst = ICON_DIR / kind, DIST.parent / "img" / kind
        if src.exists():
            shutil.rmtree(dst, ignore_errors=True)
            shutil.copytree(src, dst)
    print(f"[Build] {len(data['units'])} units -> {DIST.relative_to(ROOT)} ({DIST.stat().st_size // 1024} KB)")
    return DIST


if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--refresh", action="store_true", help="re-fetch modules from wiki first")
    build(refresh=ap.parse_args().refresh)
