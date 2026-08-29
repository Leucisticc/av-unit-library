from luaparse import parse_module


def test_basic_table():
    t = 'return { a = 1, ["b c"] = "x", list = {1, 2, 3}, nested = { k = true } }'
    assert parse_module(t) == {"a": 1, "b c": "x", "list": [1, 2, 3], "nested": {"k": True}}


def test_escapes_and_comments():
    t = '''-- header comment
return {
  --[[ block
  comment ]]
  s = "line\\\\nbreak \\"q\\" it's",  -- trailing
  t = 'single \\'esc\\'',
  n = -2.5,
}'''
    d = parse_module(t)
    assert d["s"] == 'line\\nbreak "q" it\'s'
    assert d["t"] == "single 'esc'"
    assert d["n"] == -2.5


def test_local_data_form():
    t = "local data = {\n  x = 1,\n}\nreturn data"
    assert parse_module(t) == {"x": 1}


def test_real_unit_dump(raw):
    d = parse_module(raw("UnitData_data"))
    assert len(d) >= 370
    u = d["Alocard (Vampire King)"]
    assert u["rarity"] == "Vanguard"
    assert any(p["name"] for p in u["passives"])


def test_real_other_dumps(raw):
    assert len(parse_module(raw("AbilityData_data"))) > 50
    assert len(parse_module(raw("FamiliarData_data"))) > 20
    assert parse_module(raw("EvolvedUnitsData_data"))["Alocard"] == "Alocard (Vampire King)"


def test_stray_identifier_is_skipped():
    assert parse_module('return { a = "x",e\n b = 2 }') == {"a": "x", "b": 2}
