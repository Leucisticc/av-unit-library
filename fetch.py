"""Fetch the wiki's Lua data modules into data/raw/."""
from __future__ import annotations

import json
import subprocess
import urllib.parse
from pathlib import Path

API = "https://wiki.vanguards.gg/w/api.php"
UA = "av-unit-library/1.0 (personal reference tool)"
MODULES = [
    "UnitData/data",
    "UnitData/customData",
    "AbilityData/data",
    "AbilityData/customData",
    "FamiliarData/data",
    "EvolvedUnitsData/data",
    "MemoriaData/data",
]
RAW_DIR = Path(__file__).parent / "data" / "raw"
ICON_DIR = Path(__file__).parent / "data" / "icons"


def raw_path(module: str, dest: Path = RAW_DIR) -> Path:
    return dest / (module.replace("/", "_") + ".lua")


def fetch_module(module: str) -> str:
    q = urllib.parse.urlencode({
        "action": "query", "prop": "revisions", "rvprop": "content",
        "rvslots": "main", "titles": f"Module:{module}",
        "format": "json", "formatversion": "2",
    })
    # curl, not urllib: python.org builds ship without a CA bundle on macOS.
    raw = subprocess.run(["curl", "-sSfL", "-A", UA, "--max-time", "60", f"{API}?{q}"],
                         capture_output=True, text=True, check=True).stdout
    page = json.loads(raw)["query"]["pages"][0]
    if "missing" in page:
        raise SystemExit(f"[Fetch] Module:{module} missing on wiki")
    return page["revisions"][0]["slots"]["main"]["content"]


def _api(params: dict) -> dict:
    q = urllib.parse.urlencode({**params, "format": "json", "formatversion": "2"})
    raw = subprocess.run(["curl", "-sSfL", "-A", UA, "--max-time", "60", f"{API}?{q}"],
                         capture_output=True, text=True, check=True).stdout
    return json.loads(raw)


def fetch_icons(dest: Path = ICON_DIR) -> dict[str, str]:
    """Download every status-effect icon Template:Effects references, shrunk to 40px.

    Returns {effect name: file name}. Uses `sips` (macOS) for the resize.
    """
    import re
    dest.mkdir(parents=True, exist_ok=True)
    tpl = _api({"action": "query", "prop": "revisions", "rvprop": "content", "rvslots": "main",
                "titles": "Template:Effects"})["query"]["pages"][0]["revisions"][0]["slots"]["main"]["content"]
    names = {n.strip(): f for n, f in re.findall(r'\|([^=|]+)= <span class="icon-parent"><span class="icon-img">\[\[File:([^|\]]+)', tpl)}
    files = sorted(set(names.values()))
    info = _api({"action": "query", "prop": "imageinfo", "iiprop": "url", "titles": "|".join("File:" + f for f in files)})
    for page in info["query"]["pages"]:
        if "imageinfo" not in page:
            continue
        fname = page["title"][5:]
        tmp = dest / ("_" + fname)
        subprocess.run(["curl", "-sSfL", "-A", UA, "-o", str(tmp), page["imageinfo"][0]["url"]], check=True)
        subprocess.run(["sips", "-Z", "40", str(tmp), "--out", str(dest / fname)], check=True, capture_output=True)
        tmp.unlink()
    print(f"[Fetch] {len(files)} effect icons -> {dest.relative_to(Path(__file__).parent)}")
    elems = ["Spark", "Nature", "Water", "Fire", "Holy", "Passion", "Curse", "Blast", "Cosmic", "Unbound", "UnknownElement"]
    info = _api({"action": "query", "prop": "imageinfo", "iiprop": "url", "titles": "|".join(f"File:{e}.png" for e in elems)})
    for page in info["query"]["pages"]:
        if "imageinfo" not in page:
            continue
        fname = page["title"][5:]
        tmp = dest / ("_" + fname)
        subprocess.run(["curl", "-sSfL", "-A", UA, "-o", str(tmp), page["imageinfo"][0]["url"]], check=True)
        subprocess.run(["sips", "-Z", "40", str(tmp), "--out", str(dest / ("elem_" + fname))], check=True, capture_output=True)
        tmp.unlink()
    print(f"[Fetch] {len(elems)} element icons")
    return names


def fetch_memoria_icons(dest: Path = ICON_DIR / "memoria") -> None:
    """Download every memoria's picture (File:<name>.png) as an 80px thumbnail."""
    from luaparse import parse_module
    dest.mkdir(parents=True, exist_ok=True)
    data = parse_module(raw_path("MemoriaData/data").read_text(encoding="utf-8"))
    names = [k for k, v in data.items() if isinstance(v, dict)]
    for i in range(0, len(names), 25):
        chunk = names[i:i + 25]
        info = _api({"action": "query", "prop": "imageinfo", "iiprop": "url", "iiurlwidth": "120",
                     "titles": "|".join(f"File:{n}.png" for n in chunk)})
        for page in info["query"]["pages"]:
            if "imageinfo" not in page:
                print(f"[Fetch] No picture for memoria {page['title'][5:-4]}")
                continue
            name = page["title"][5:-4]
            tmp = dest / ("_" + name + ".png")
            url = page["imageinfo"][0].get("thumburl") or page["imageinfo"][0]["url"]
            subprocess.run(["curl", "-sSfL", "-A", UA, "-o", str(tmp), url], check=True)
            subprocess.run(["sips", "-Z", "80", str(tmp), "--out", str(dest / (name + ".png"))], check=True, capture_output=True)
            tmp.unlink()
    print(f"[Fetch] {len(names)} memoria pictures")


def fetch_all(dest: Path = RAW_DIR) -> None:
    dest.mkdir(parents=True, exist_ok=True)
    for m in MODULES:
        text = fetch_module(m)
        raw_path(m, dest).write_text(text, encoding="utf-8")
        print(f"[Fetch] {m} -> {len(text)} chars")
    fetch_icons()
    fetch_memoria_icons()


if __name__ == "__main__":
    fetch_all()
