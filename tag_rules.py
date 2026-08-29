"""Tag rule table — one entry per tag.

Vocabulary: the general status effects on the wiki's Status Effects page
(https://wiki.vanguards.gg/Status_Effects), grouped the way that page groups
them, plus buff and mechanic tags of our own. Unit-specific named effects
(Stone, Infinite Spin, Purgatory Flames, Destruction, Opportunity, Despair,
Aura of Corruption, Absolute Zero, Conflagration, Primed, Corruption,
Affection, Chained) are NOT tags — they map onto the general effect they
actually do (Stone = Stun + takes more damage; Infinite Spin = Repulse ...).

Each rule may carry:
  patterns  - a hit on any of these tags the entry
  suppress  - a hit is dropped if one of these matches the ~60 chars before
              it, within the same sentence. Separates applying an effect
              ("attacks Stun enemies") from reacting to it ("when attacking a
              Stunned enemy"), and self buffs from ally buffs.
  icon      - file in data/icons/ (from the wiki's Template:Effects)
NEGATIONS apply to every tag: "immune to", "cannot be", "removes"...

Patterns are shipped to the HTML page as JavaScript RegExp for highlighting,
so use only syntax both `re` and JS accept: \\b, (?:...), fixed-width
(?<!...), (?!...), \\d, quantifiers. No inline flags, no named groups.
"""

# Wiki colours (MediaWiki:Common.css). Rarity text gradients are used as-is on the dark
# theme; the solid is the light-theme fallback.
RARITY_STYLE = {
    "Rare":      {"gradient": "linear-gradient(to bottom,#ffffff 20%,#00bbfa 80%)", "solid": "#0095c8"},
    "Epic":      {"gradient": "linear-gradient(to bottom,#e0a3ff 20%,#6602cb 80%)", "solid": "#6602cb"},
    "Legendary": {"gradient": "linear-gradient(90deg,#fff3a0 0%,#dcd001 40%,#d07f02 100%)", "solid": "#b86f00"},
    "Mythic":    {"gradient": "linear-gradient(-125deg,#33ffcc 15%,#45ff41,#d6ff33,#fdd233,#ff7c33,#ff3346,#ff33b7 85%)", "solid": "#e0203a"},
    "Exclusive": {"gradient": "linear-gradient(150deg,#ec0004 10%,#e385ef 90%)", "solid": "#c8207a"},
    "Secret":    {"gradient": "linear-gradient(150deg,#c60000 10%,#500000 45%,#f40000 80%)", "solid": "#a80000"},
    "Vanguard":  {"gradient": "linear-gradient(150deg,#c00060 10%,#700090 40%,#e0a02d 80%)", "solid": "#8a0a78"},
    "Unknown":   {"gradient": "linear-gradient(#8a8f9a,#8a8f9a)", "solid": "#6b7280"},
}
ELEMENT_COLOR = {
    "Fire": "#f88f2d", "Nature": "#00fe6c", "Water": "#4275ff", "Spark": "#09e7ff", "Holy": "#f9fca7",
    "Passion": "#ffb7d6", "Curse": "#9500eb", "Blast": "#eeeeee", "Cosmic": "#8b72fd", "Unbound": "#d10015",
    "Unknown": "#d10015",
}
ELEMENT_ICON = {e: f"elem_{e}.png" for e in ELEMENT_COLOR if e != "Unknown"} | {"Unknown": "elem_UnknownElement.png"}

# Phrases that name who an ally buff targets -> canonical target id.
# Elements match by name; groups match the unit data's `groups` ids with spaces removed.
BUFF_TARGET_ALIASES = {
    "pirate": "Pirates", "pirates": "Pirates",
    "giant": "Giant", "giants": "Giant",
    "dragon sphere": "DragonSphere",
    "demon controller": "DemonController",
    "demon hunter": "DemonHunter",
    "video game": "VideoGames", "video games": "VideoGames",
    "fused": "Fused",
    "crimson moon": "CrimsonMoon",
    "ninjutsu": "Ninjutsu", "units with ninjutsu": "Ninjutsu",
    "spark": "Spark", "blast": "Blast", "cosmic": "Cosmic",
    "swap": "Swap",
}

TAG_GROUPS = {
    "dot":    "Damage over Time",
    "cc":     "Crowd Control",
    "amp":    "Damage Amplification",
    "effect": "Other Effects",
    "buffs":  "Buffs",
    "mech":   "Mechanics",
}

_BUFF = r"\bbuff(?:s|ing|ed)?"
_ALLY_NOUN = r"(?:all|allies|ally|every|other|nearby|units|towers)"

# Preceding context that turns an effect word into a condition, not an application.
_CONDITION = [
    r"\b(?:attacking|hitting|against|already|per|each|every|extend(?:s|ed|ing)?|detonat(?:e|es|ed|ing)|expire[sd]?|of|from|by|as|has|have|any|no|not|while|bypass(?:es|ing)?|damage to|dmg to|toward(?:s)? the|increas(?:e|es|ing))\s+(?:a |an |the |all |any |enemies |enemy |non-boss |same |that |already |newly |their |instances? of |the % of )*$",
    r"\battacks?\s+(?:a|an|the|any)\s+(?:already |newly )?$",
    # "enemy with Bleed" / "enemies afflicted with Wounded" = condition; "inflict that enemy with Wanted" = application
    r"(?<!inflict )(?<!inflicts )(?<!inflict that )(?<!inflicts that )(?<!inflict the )(?<!inflicts the )(?<!inflict all )(?<!inflicts all )(?<!inflicting )\b(?:enem(?:y|ies)|targets?|boss(?:es)?|one|those|them)\s+(?:already |currently )?(?:that (?:is|are|has|have) )?(?:is |are )?(?:inflicted |afflicted )?with\s+(?:a |an |any |the )?$",
    r"\bself\s*-?\s*$",
    r"\bthis unit\s+(?:is|gets?|was)\s+$",
]
# Context that says a buff line is aimed at allies, not this unit.
_ALLY_CONTEXT = [
    r"\ball (?:[\w' ]+ )?(?:allies|units)\b[^.;]*$",
    r"\b(?:allies|units) in (?:this unit'?s )?range\b[^.;]*$",
    r"\bfor all units\b[^.;]*$",
    r"\ballies:\s*$",
    r"\bthat (?:ally|unit)\b[^.;]*$",
]

_POST = r"(?![^.;]{0,30}\b(?:is |are |gets? )?(?:removed|expires?|ends|tick|dealt|stacks? expire))"


def _fx(group, label, icon, patterns):
    return {"group": group, "label": label, "icon": icon,
            "patterns": [pat + _POST for pat in patterns], "suppress": _CONDITION}

TAG_RULES = {
    # -- Damage over Time -------------------------------------------------------
    "bleed":        _fx("dot", "Bleed",        "Bleed.png",        [r"\bbleeds?\b"]),
    "burn":         _fx("dot", "Burn",         "Burn.png",         [r"(?<!intense )(?<!purgatory )\bburns?\b(?! (?:unit )?slots?)(?! dot\b)(?! (?:dmg|damage) (?:\+|by \d|to \d|from|dealt|for))", r"\b(?:enem(?:y|ies)|them|they|those|it|targets?|boss(?:es)?|all|hit|units|range|map|field)\s+(?:are |is |gets? |becomes? |will be )?burned\b", r"\bconflagration\b"]),
    "intense-burn": _fx("dot", "Intense Burn", "Intense Burn.png", [r"\bintense burn\b"]),
    "black-flames": _fx("dot", "Black Flames", "BlackFlame.png",   [r"\bblack flames?\b"]),
    "chaos":        _fx("dot", "Chaos",        "Chaos Icon.png",   [r"\bchaos\b"]),
    "frostburn":    _fx("dot", "Frostburn",    "Frostburn.png",    [r"\bfrostburn\b"]),
    # -- Crowd Control ------------------------------------------------------------
    "repulse":   _fx("cc", "Repulse",   "Repulse.png",   [r"\brepulse[sd]?\b(?! lockout)", r"\brepulsing\b", r"\binfinite spin\b"]),
    "slow":      _fx("cc", "Slow",      "Slow.png",      [r"\bslows?\b", r"\bslowing\b", r"\b(?:enem(?:y|ies)|them|they|those|it|targets?|boss(?:es)?|all|hit|units|range|map|field)\s+(?:are |is |gets? |becomes? |will be )?slowed(?: by| for| until)\b", r"\bdespair\b", r"\baura of corruption\b"]),
    "stun":      _fx("cc", "Stun",      "Stun.png",      [r"(?<!-attack )\bstuns?\b(?! (?:this unit|self|itself|him|her|lockout|immunity))", r"\bstunning\b", r"\b(?:enem(?:y|ies)|them|they|those|it|targets?|boss(?:es)?|all|hit|units|range|map|field)\s+(?:are |is |gets? |becomes? |will be )?stunned(?: for| by| until)\b", r"\binflict(?:s|ing)? stone\b"]),
    "freeze":    _fx("cc", "Freeze",    "Freeze.png",    [r"\bfreez(?:e|es|ing)\b(?! lockout)", r"\b(?:enem(?:y|ies)|them|they|those|it|targets?|boss(?:es)?|all|hit|units|range|map|field)\s+(?:are |is |gets? |becomes? |will be )?frozen(?: for| by| until)\b", r"\bfrostburn\b"]),
    "timestop":  _fx("cc", "Time Stop", "Time Stop.png", [r"\btime ?stops?\b(?! lockout)", r"\b(?:enem(?:y|ies)|them|they|those|it|targets?|boss(?:es)?|all|hit|units|range|map|field)\s+(?:are |is |gets? |becomes? |will be )?time ?stopped(?: for| by| until)\b", r"\bstops? time\b"]),
    "petrified": _fx("cc", "Petrified", "Petrified.png", [r"\bpetrif(?:y|ies|ied)\b"]),
    "confusion": _fx("cc", "Confusion", "Confusion.png", [r"\bconfus(?:ion|es|ed|ing)\b"]),
    # -- Damage Amplification -----------------------------------------------------
    "cleave":    _fx("amp", "Cleave",    "Cleave.png",    [r"\bcleaves?\b", r"\bcleaved\b"]),
    "diseased":  _fx("amp", "Diseased",  "Diseased.png",  [r"\bdiseased?\b"]),
    "dismantle": _fx("amp", "Dismantle", "Dismantle.png", [r"\bdismantle\b"]),
    "scorched":  _fx("amp", "Scorched",  "Scorched.png",  [r"\bscorched\b"]),
    "bubbled":   _fx("amp", "Bubbled",   "Bubbled.png",   [r"\bbubbled?\b"]),
    "wounded":   _fx("amp", "Wounded",   "Wounded.png",   [r"\bwounded\b"]),
    "conduit":   _fx("amp", "Conduit",   "Conduit.png",   [r"\bconduit\b"]),
    "wanted":    _fx("amp", "Wanted",    "Wanted.png",    [r"\bwanted\b"]),
    "slumber":   _fx("amp", "Slumber",   "Slumber.png",   [r"\bslumber\b"]),
    "stone":     _fx("amp", "Stone",     "Stone.png",     [r"\binflict(?:s|ing)? stone\b", r"\bturn(?:s|ed)? (?:enemies |them )?(?:in)?to stone\b"]),
    "dmg-taken": {"group": "amp", "label": "Takes more damage (unnamed)", "icon": None, "patterns": [r"\btakes? \+?\d+% more (?:damage|dmg)\b", r"\bincreases? the damage (?:they|it) takes?\b", r"\bvulnerab(?:le|ility)\b", r"\breceive \+\d+%", r"\bpurgatory flames\b", r"\binflicts? opportunity\b", r"\bdespair\b"], "suppress": _CONDITION},
    # -- Other Effects ------------------------------------------------------------
    "rupture":  _fx("effect", "Rupture",  "Rupture.png",  [r"\brupture\b"]),
    "nullify":  _fx("effect", "Nullify",  "Nullify.png",  [r"\bnullif(?:y|ies|ied)\b"]),
    "tethered": {"group": "effect", "label": "Tethered / Pull", "icon": "Tethered.png", "patterns": [r"\btether(?:s|ed|ing)?\b", r"\bpull(?:s|ed|ing)? (?:all |the )?(?:[\w]+ )?enemies\b", r"\bbring(?:s)? all enemies to\b"]},
    # -- Buffs --------------------------------------------------------------------
    "dmg-buff":   {"group": "buffs", "label": "Damage buff", "icon": None, "patterns": [_BUFF + r" (?:the )?(?:[\w'% ]+?)?(?:damage|attack)\b", r"\bdamage buff\b", r"\bincreas(?:e|es|ing) (?:the |this unit'?s |its |own )?damage (?:of|by)\b", r"\bgains? (?:a )?\+?\d+% damage\b", r"(?<!crit )(?<!burn )\b(?:damage|dmg) \+\d+%", r"\+\d+% attack\b", r"(?<!crit )(?<!burn )(?<!bleed )(?<!dot )\bDMG \+\d+%", r"\+\d+% damage\b", r"\braises? damage by\b"]},
    "range-buff": {"group": "buffs", "label": "Range buff",  "icon": None, "patterns": [_BUFF + r" (?:this unit'?s |their |its |own |the )?range\b", _BUFF + r" (?:that |the )?(?:ally|unit|allies|units)(?: in range)? by [\w'% ]{0,25}?\brange\b", r"\brange \+\d+%", r"(?<!in )\brange by \d", r"\b(?:and|&) (?:\+?\d+% )?range\b", r"\bRNG \+\d+%", r"\+\d+% range\b", r"\brange buff\b", r"\bincreases? range by\b", r"\bgains? \+?\d+% range\b"]},
    "spa-buff":   {"group": "buffs", "label": "SPA buff",    "icon": None, "patterns": [_BUFF + r" (?:the )?(?:[\w' ]+?)?(?:spa|attack speed)\b", r"\b(?:reduc|decreas|lower)(?:e|es|ed|ing)? (?:the |this unit'?s |their |own |its )?spa\b", r"\bSPA -\d+%", r"-\d+% spa\b", r"\bloses? \d+% spa\b"]},
    "crit-buff":  {"group": "buffs", "label": "Crit buff",   "icon": None, "patterns": [_BUFF + r" (?:the )?(?:[\w' ]+?)?crit(?:ical)?(?: rate| damage| chance| dmg)?\b", r"\bcrit(?:ical)? (?:rate|damage|chance|dmg) \+\d+%", r"\+\d+% crit", r"\bgains? \+?\d+% crit", r"\bhas \d+% crit", r"\bovercrit\b"]},
    "cost-reduction": {"group": "buffs", "label": "Cost reduction", "icon": None, "patterns": [r"\b(?:reduc|lower|decreas)(?:e|es|ed|ing)? (?:the )?(?:[\w' ]{0,25}?)(?:placement |upgrades? |deployment )?(?<!active )(?<!ability )(?<!mana )(?<!meter )costs?\b", r"\bcheaper\b", r"\bcost reduction\b", r"\bcosts? nothing\b", r"\bplace[sd]?[^.;]{0,30}? for free\b", r"\bcosts \d+% less\b", r"\bcosts? (?:are )?reduced\b"]},
    "buff":       {"group": "buffs", "label": "Buff (any)",  "icon": None, "patterns": [_BUFF + r"\b"]},
    "self-buff":  {"group": "buffs", "label": "Buffs self",  "icon": None, "patterns": [
        _BUFF + r" this unit'?s?\b",
        _BUFF + r" (?:its |their |his |her )?own\b",
        _BUFF + r" (?:itself|self)\b",
        _BUFF + r" (?:unit )?(?:damage|range|spa|attack speed|crit(?:ical)?(?: rate| damage| chance)?) by\b",
        r"\bthis unit gains?\b",
        r"\bgains? (?:a )?\+?\d+% (?:damage|range|crit|spa)",
        r"\b(?:damage|range) \+\d+%(?![^.;]{0,40}\b(?:for|to) all (?:[\w' ]+ )?(?:units|allies))",
        r"(?<!crit )\b(?:DMG|RNG|CRIT|CRIT DMG) \+\d+%(?![^.;]{0,40}\b(?:for|to) all (?:[\w' ]+ )?(?:units|allies))",
        r"\bSPA -\d+%(?![^.;]{0,40}\b(?:for|to) all (?:[\w' ]+ )?(?:units|allies))",
        r"\+\d+% (?:damage|range|crit)",
        r"\bincreases? (?:this unit'?s |own |its )?(?:damage|range|crit[\w ]*) by \d+%",
        r"\bincreases? this unit'?s damage\b",
        r"\braises? damage by\b",
    ], "suppress": _ALLY_CONTEXT},
    "ally-buff":  {"group": "buffs", "label": "Buffs allies", "icon": None, "patterns": [
        _BUFF + r" (?:the )?[\w' ]{0,30}? of " + _ALLY_NOUN + r"\b",
        _BUFF + r" " + _ALLY_NOUN + r"\b",
        _BUFF + r" (?!this |that )(?:[\w-]+ ){1,3}(?:allies|units)\b",
        _BUFF + r" (?:that|the|each|every|any) (?:ally|unit)\b",
        r"\b(?:allies|units) in (?:this unit'?s )?range\b[^.;]{0,40}?(?:" + _BUFF + r"|gains?|\+\d+%|DMG \+|RNG \+)",
        r"\ball (?:[\w' ]+ )?(?:allies|units)\b[^.;]{0,40}?(?:" + _BUFF + r"|gains?|\+\d+%|DMG \+|RNG \+)",
        r"\b(?:increase|increases|raise|raises|boost|boosts) (?:the )?damage of (?:all|allies|units|nearby|that (?:ally|unit))\b",
        r"\bboosts? their damage\b",
        r"\b(?:reduc|decreas)(?:e|es|ing) the spa of (?:all )?(?:allies|units)\b",
        r"\ballies gain\b",
        r"\b(?:DMG|RNG|SPA|CRIT)[ +\-\d%&]+(?:for|to) all (?:[\w' ]+ )?(?:units|allies)\b",
        _BUFF + r" (?:the )?damage of [\w' ]{0,30}?(?:allies|units|placements)\b",
        _BUFF + r" (?:the )?damage of (?:the )?next unit\b",
        _BUFF + r" their (?:damage|range|spa|crit)",
        r"\bincreases? their damage\b",
        r"\b(?:any|every) unit [^.;]{0,60}?\bbuffed\b",
    ]},
    # -- Mechanics ------------------------------------------------------------------
    "dr-bypass":  {"group": "mech", "label": "Ignores damage reduction", "icon": None, "patterns": [r"\b(?:bypass|ignor)(?:e|es|ed|ing)?\b[^.;]{0,25}?\b(?:damage|dmg) (?:reduction|resistance)s?\b", r"\bignores? (?:enemy )?dr\b", r"\binflicts? destruction\b", r"\bdamage reduction (?:amount )?(?:is )?set to 0\b", r"\blowers? the damage reduction\b", r"\bdamage reduction ignore\b"]},
    "shield-pierce": {"group": "mech", "label": "Anti-shield / vs Overshield", "icon": None, "patterns": [
        r"\b(?:bypass|ignor|remov|destroy|break|pierc|shatter)(?:e|es|ed|ing)?\b[^.;]{0,30}?\b(?:over)?shields?\b",
        r"\b(?:more damage|bonus damage|\+\d+% DMG|\dx damage)[^.;]{0,40}?\b(?:over)?shield(?:ed|s)?\b",
        r"\b(?:against|to) (?:enemies with )?(?:over)?shield(?:ed|s)?\b",
        r"\bhitting enemies with overshield\b",
    ]},
    "bonus-vs":   {"group": "mech", "label": "Bonus dmg vs condition", "icon": None, "patterns": [r"\bdeals? \+?\d+% more (?:damage|dmg) (?:to|against|when|if|on|while)\b", r"\bDMG \+\d+% (?:when|to|against|if|while)\b", r"\b\+\d+% (?:damage|dmg) to enemies\b", r"\bdamage is multiplied\b"]},
    # Membership comes from groups_extra.json ("Swap"), not from text: the list is hand-confirmed.
    "swap":       {"group": "mech", "label": "Swap (counterpart)", "icon": None, "patterns": [r"(?!x)x"]},
    "summon":     {"group": "mech", "label": "Summon",       "icon": None, "patterns": [r"(?<!\d )\bsummon(?:s|ed|ing)?\b(?! cap)", r"\bclones?\b", r"\bthralls?\b", r"\bspawns? (?:a |an |in )?(?:[\w' ]{0,20}? )?(?:ally|allies|copy|soldier|zombie|shadow|skeleton|wolves|wolf)", r"\bas (?:a |an )?(?:friendly )?(?:summon|ally|allies)\b", r"\bconvert(?:s|ed)? (?:\d+ )?(?:non-?boss )?enemies into\b"]},
    "mark":       {"group": "mech", "label": "Marks enemies", "icon": None, "patterns": [r"\bmark(?:s|ed)? (?:an? |the |that |every |all |each )?(?:enem|target|non-boss|them\b|it\b)", r"\b(?:is|are|become|becomes) marked\b(?! with| as)", r"\bmarked enem"]},
    "meter":      {"group": "mech", "label": "Meter / Mana", "icon": None, "patterns": [r"\bmana\b", r"\bMP\b", r"\bmeters?\b", r"\bbars? of meter\b", r"\bgauge\b"]},
    "stacks":     {"group": "mech", "label": "Stacking mechanic", "icon": None, "patterns": [r"\b\d+ stacks?\b", r"\bstacks? of\b", r"\bper stack\b", r"\bgains? (?:\d+ )?[\w' ]{0,20}? stacks?\b", r"\bstacking\b", r"\bstacks? (?:count|reset|refresh)", r"\bcan stack\b"]},
    "aoe":        {"group": "mech", "label": "Hits all in range", "icon": None, "patterns": [r"\ball enemies\b", r"\bAoE\b", r"\bhits? all\b"]},
}

# If one of these ends within 40 chars before a match, in the same clause, drop it
# (unless an explicit apply verb follows it — see tag.py).
NEGATIONS = [
    r"\bimmune to\b",
    r"\bimmunity to\b",
    r"\bcannot be\b",
    r"\bcan'?t be\b",
    r"\bresist(?:s|ant to)?\b",
    r"\bremove(?:s|d)?\b",
    r"\bcleanse(?:s|d)?\b",
    r"\bprevent(?:s|ed)?\b",
    r"\bno longer\b",
    r"\bexclud(?:es|ing)\b",
    r"\bdodge\b",
]
