import json
import re

from build import ROOT, build


def test_build_outputs():
    out = build(refresh=False)
    html = out.read_text(encoding="utf-8")
    m = re.search(r'<script id="data" type="application/json">(.*?)</script>', html, re.S)
    assert m, "embedded data block missing"
    data = json.loads(m.group(1).replace("<\\/", "</"))
    assert len(data["units"]) >= 370
    assert "bleed" in data["tags"] and data["tags"]["bleed"]["patterns"]
    assert data["negations"]
    assert data["tags"]["bleed"]["icon"].startswith("data:image/png;base64,")
    assert data["tags"]["bleed"]["group"] == "dot" and "dot" in data["groups"]
    # only Google Fonts may be external
    for url in re.findall(r'(?:src|href)="(https?://[^"]+)"', html):
        assert url.startswith("https://fonts.googleapis.com") or "wiki.vanguards.gg" in url, url
    j = json.loads((ROOT / "data" / "units.json").read_text())
    assert len(j["units"]) == len(data["units"])
