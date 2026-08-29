from model import build_units, clean_text, slugify


def test_clean_text():
    s = "<color=30c23d>MP:</color>\\n\\t• Regen 2%\\n\\t• {{Effects|Slow|Slows}} them by {{Effects|Bleed}}; <numcolor>+1%</numcolor>"
    assert clean_text(s) == "MP:\n• Regen 2%\n• Slows them by Bleed; +1%"


def test_clean_both_keeps_template_words():
    from model import clean_both
    plain, rich = clean_both("Buffs {{Element|Spark}} units by {{ColorText|Nature|text=80%}}; <numcolor>+5%</numcolor> for {{Group|DragonSphere}} allies")
    assert plain == "Buffs Spark units by 80%; +5% for Dragon Sphere allies"
    assert "\u27e6el|Spark\u27e7" in rich and "\u27e6ct|Nature|80%\u27e7" in rich and "\u27e6grp|DragonSphere|Dragon Sphere\u27e7" in rich
    assert "\u27e6num|+5%\u27e7" in rich


def test_clean_text_joins_stray_newlines():
    assert clean_text("Attacks\nStun\nenemies for 2s") == "Attacks Stun enemies for 2s"
    assert clean_text("Effects:\n• Buff damage\n• Stun") == "Effects:\n• Buff damage\n• Stun"


def test_slugify():
    assert slugify("Alocard (Vampire King)") == "Alocard_(Vampire_King)"


def test_units_shape(raw):
    units = build_units()
    assert len(units) >= 370
    by = {u["name"]: u for u in units}
    avk = by["Alocard (Vampire King)"]
    assert avk["state"] == "Evolved" and avk["evolvesFrom"] == "Alocard"
    assert avk["rarity"] == "Vanguard"
    base_names = {p["name"] for p in by["Alocard"]["passives"]}
    evo_names = {p["name"] for p in avk["passives"]}
    assert base_names & evo_names
    assert any(p["source"] == "familiar" for p in avk["passives"])
    assert all("desc" in a and "name" in a for u in units for a in u["abilities"])
    # placeholder entries (element combos like "BlastBlast") are dropped
    assert all(u["passives"] or u["abilities"] for u in units)
    assert "BlastBlast" not in by
    assert "Alocard v1" not in by and "Alocard" in by
    assert by["Alocard"]["state"] == "Unevolved"
    assert by["Divine General (Adaptation)"]["state"] == "No evolution"
    assert by["Apathetic Savior"]["state"] == "Unevolved"  # wiki says state="No" but it evolves
    assert {u["state"] for u in units} == {"Unevolved", "Evolved", "No evolution"}
    assert "Ninjutsu" in by["Agony Shinobi (Force)"]["groups"]
    brisket = next(p for p in by["Brisket (Yo-Yo)"]["passives"] if p["name"] == "I'm Not There")
    assert brisket["desc"].startswith("Buffs Spark units by 80% Damage")
    for u in units:
        for p in u["passives"] + u["abilities"]:
            assert "<color" not in p["desc"] and "{{" not in p["desc"] and "\\n" not in p["desc"]
            assert "{{" not in p["rich"] and "<" not in p["rich"].replace("<", "") 
