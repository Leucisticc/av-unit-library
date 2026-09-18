import pytest

from model import build_units
from tag import apply_tags, tag_text
from tag_rules import TAG_GROUPS, TAG_RULES


def test_tag_text_basic():
    assert "bleed" in tag_text("inflicts Bleed for 5% over 6 seconds")
    assert "burn" in tag_text("Attacks apply Burn.")
    assert "repulse" in tag_text("Repulses enemies on hit")
    assert "tethered" in tag_text("Enemies are Tethered to this unit")
    assert "dmg-buff" in tag_text("Buff damage by 30% for units in range")
    assert "summon" in tag_text("Summons a clone that deals 50%")


def test_condition_is_not_application():
    assert "bleed" not in tag_text("DMG +30% when hitting Bleeding enemies.")
    assert "stun" not in tag_text("When attacking a Stunned enemy, deal 50% more damage")
    assert "stun" not in tag_text("Every 3rd attack stuns this unit for 2 seconds")
    assert "repulse" not in tag_text("If this unit attacks an enemy on repulse lockout, they deal 30% more damage")
    assert "stun" in tag_text("Attacks Stun enemies for 2 seconds")
    assert "slow" in tag_text("Enemies in this unit's range are slowed by 50%")
    assert "bonus-vs" in tag_text("Deal 50% more damage to Bleeding enemies")


def test_named_effects_map_to_general_ones():
    assert {"stun", "stone"} <= set(tag_text("Attacks inflict Stone for 2 seconds"))
    assert "stun" not in tag_text("Inflict Slumber on all enemies on the map")
    assert "repulse" in tag_text("The next 5 Attacks inflict Infinite Spin")
    assert "burn" not in tag_text("Applies Intense Burn (deals 50% damage over 10s)")
    assert "intense-burn" in tag_text("Applies Intense Burn (deals 50% damage over 10s)")
    assert "dr-bypass" in tag_text("Attacks ignore enemy Damage Reduction")
    assert "dr-bypass" in tag_text("Attacks bypass 40% of Damage Reduction")
    assert "petrified" in tag_text("allows this unit to Petrify the selected area")
    assert {"destruction", "dr-bypass"} <= set(tag_text("Attacks apply Destruction"))
    assert "blight" in tag_text("Blight: afflicted enemies take 30% more damage from Holy and Curse units.")
    assert "blight" not in tag_text("When a Blight inflicted enemy takes damage from a Crimson Moon ally")
    for fake in ("petrify", "stone-icon", "heal", "overshield", "shock", "poison", "curse", "knockback", "dot"):
        assert fake not in TAG_RULES


def test_swap_and_peroxide_from_hand_list():
    units = apply_tags(build_units(), {})
    by = {u["name"]: u for u in units}
    assert "swap" in by["Roku (Super 3)"]["tags"] and "swap" in by["God (Standless)"]["tags"]
    assert "swap" not in by["Fruit Eater"]["tags"] and "swap" not in by["Roku"]["tags"]
    assert "Peroxide" in by["Ichiga (Savior)"]["groups"] and "Peroxide" in by["Grim Wow"]["groups"]
    assert "Peroxide" not in by["Rideon vs Samuel"]["groups"]


def test_shield_and_overshield():
    assert "shield-pierce" in tag_text("Deal 100% more damage to enemies with Overshield")
    assert tag_text("Attacks remove shields and ignore damage reduction") == ["shield-pierce"]
    assert "overshield" not in TAG_RULES and "shield" not in TAG_RULES


def test_self_vs_ally_buff():
    assert "self-buff" in tag_text("Buff this unit's damage by 100%")
    assert "ally-buff" not in tag_text("Buff this unit's damage by 100%")
    assert "ally-buff" in tag_text("Buff the damage of all Peroxide units by 80%")
    assert "ally-buff" in tag_text("buff the Crit Rate of all Demon Controller allies by 50%")
    assert "self-buff" in tag_text("Buff damage by 800%.")
    t = "For each enemy hit by an attack, buff damage by 5% (up to 100%); This buff resets every other attack."
    assert "self-buff" in tag_text(t) and "ally-buff" not in tag_text(t)
    t2 = "All allies:\n• Buff damage by 40%"
    assert "ally-buff" in tag_text(t2) and "self-buff" not in tag_text(t2)
    t3 = "buffs this units damage and range by +50%"
    assert "self-buff" in tag_text(t3) and "ally-buff" not in tag_text(t3)
    assert "range-buff" not in tag_text("Buffs all allies in range by 20% damage.")
    assert "dmg-buff" not in tag_text("Crit Rate +35% & Crit DMG +50%.")


def test_negation_guard():
    assert "stun" not in tag_text("This unit is immune to Stun.")
    assert "bleed" not in tag_text("Cannot be inflicted with Bleed.")
    assert "stun" in tag_text("Immune to Slow; attacks Stun enemies for 2s.")
    assert "stacks" not in tag_text("buff damage by 50% for 30 seconds (does not stack)")
    assert "slow" in tag_text("If he does not attack he instead slows enemies and raises damage by 5%.")
    assert "burn" not in tag_text("Burn DMG +50%.")
    assert "burn" not in tag_text("When a Burn is removed via this passive, gains a 50% damage buff")
    assert "intense-burn" not in tag_text("deals all remaining DoT damage (excludes Intense Burn)")
    assert "stun" not in tag_text("Dodara is stunned for 5 seconds")
    assert "stun" in tag_text("enemies are stunned for 2 seconds")
    assert "wanted" in tag_text("removes that Overshield and inflicts Wanted on the enemy")
    assert "ally-buff" in tag_text("RNG +10% for all units in range.")
    assert "ally-buff" in tag_text("buffs Fire and Blast allies by 30% damage")


def test_vocabulary_is_real_effects():
    for fake in ("shock", "poison", "curse", "knockback", "shield", "heal", "overshield", "buff"):
        assert fake not in TAG_RULES
    assert "tethered" in tag_text("Enemies are Tethered to this unit")
    assert "tethered" not in tag_text("Any unit placed before this unit becomes Chained to this unit")
    assert "stone" in tag_text("turns enemies to stone for 3 seconds")
    for tid, r in TAG_RULES.items():
        assert r["group"] in TAG_GROUPS, tid
        assert r["patterns"], tid


def test_buff_targets():
    from tag import buff_targets
    G = ["Pirates", "Giant", "DragonSphere", "DemonController"]
    assert buff_targets("Buffs all allies in range by 20% damage.", G) == ["all"]
    assert buff_targets("Buff the damage of all Peroxide units by 80%", G) == ["Peroxide"]
    assert buff_targets("buffs Fire and Blast allies by 30% damage", G) == ["Fire", "Blast"]
    assert buff_targets("Buffs all Giant category allies on the field by 40% damage", G) == ["Giant"]
    assert buff_targets("buff the Crit Rate of all Demon Controller allies by 80%", G) == ["DemonController"]
    assert buff_targets("Buff the damage of Pirate allies in range by 30%", G) == ["Pirates"]
    assert buff_targets("DMG +3% per wave for all units in range", G) == ["all"]
    assert buff_targets("Buffs all Dragon Sphere units in range by +10% attack", G) == ["DragonSphere"]
    assert buff_targets("Buffs all Cosmic allies by 30% damage.", G) == ["Cosmic"]
    assert buff_targets("Whenever a Ninjutsu unit is placed, buff that unit's damage by 50%", G + ["Ninjutsu"]) == ["Ninjutsu"]
    assert buff_targets("For every missing Lifestock, buff this unit's Critical Chance by 25%; Buff the damage of Dragon Sphere allies in range by 50%.", G) == ["DragonSphere"]
    assert buff_targets("Anytime this unit cleanses a debuff from an ally, buff that ally by 25% damage", G) == ["all"]
    assert buff_targets("Buffs all Giant category allies in range by 30%; after 120 seconds buffs own placements and stop buffing allies.", G) == ["Giant"]


def test_apply_and_overrides():
    units = build_units()
    apply_tags(units, {})
    by = {u["name"]: u for u in units}
    avk = by["Alocard (Vampire King)"]
    assert {"bleed", "wounded"} <= set(avk["tags"])
    assert by["Dot"]["passives"][0]["tags"] == ["repulse"]  # unit name is not tag text
    p = avk["passives"][0]
    key = f"{avk['name']}|{p['name']}"
    apply_tags(units, {key: {"add": ["tethered"], "remove": list(p["tags"])}})
    p2 = {u["name"]: u for u in units}["Alocard (Vampire King)"]["passives"][0]
    assert p2["tags"] == ["tethered"]


def test_override_validation():
    units = build_units()
    with pytest.raises(ValueError):
        apply_tags(units, {"Nobody|Nothing": {"add": ["bleed"]}})
    with pytest.raises(ValueError):
        apply_tags(units, {"Alocard|Vampiric Chaser": {"add": ["not-a-tag"]}})


def test_coverage_sanity():
    units = build_units()
    apply_tags(units, {})
    assert sum(1 for u in units if u["tags"]) / len(units) > 0.7
