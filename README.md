# AV Unit Library

**Live:** https://leucisticc.github.io/av-unit-library/

Offline, filterable library of every Anime Vanguards unit's passives and
active abilities. Data comes from the wiki's Lua data modules
(`Module:UnitData/data`, `AbilityData`, `FamiliarData`, `EvolvedUnitsData`),
not from scraping pages.

## Use

Open `dist/index.html` in a browser. Query syntax:

| Token | Meaning |
|-------|---------|
| `bleed` | bare word: substring search across unit names + passive/ability text |
| `dot:bleed+burn` | applies Bleed OR Burn |
| `dot:bleed dot:burn` | applies Bleed AND Burn |
| `-rarity:rare` | exclude Rare units |
| `element:cosmic` `state:evolved` `group:pirates` | metadata filters (dropdown tick boxes write these) |
| `buffs:self-buff` / `buffs:ally-buff` | who the buff targets |
| `bufftarget:fire` / `bufftarget:pirates` / `bufftarget:all` | which allies an ally buff is for |
| `tag:summon` | any tag regardless of group |

Keys: `dot` `cc` `amp` `effect` `buffs` `mech` `bufftarget` `element` `rarity` `state` `group` `tag`.
The `?` button on the page explains all of this for end users.

Dropdowns write the same tokens into the search box; ✕ on a row excludes. Active tag filters underline the exact words that earned
the tag. `/` focuses search, `Esc` clears, arrows move.

## Tags

Vocabulary follows the wiki's Status Effects page — only effects that exist
in-game. A tag means the passive *applies* the effect; conditions ("when
hitting a Bleeding enemy") don't count and show up under `other:bonus-vs`
instead. Buffs are split into `self-buff` / `ally-buff`. Rules live in
`tag_rules.py`; each rule can carry `suppress` contexts (e.g. "All allies:"
above a "Buff damage" line makes it an ally buff, not self).

## Refresh from wiki

    python3 build.py --refresh

Then commit `data/` and `dist/` — pushing `main` redeploys the site (GitHub Pages serves `dist/`).

## Fix a wrong tag

Edit `overrides.json`:

    {"Alocard (Vampire King)|Vampiric Thralls": {"add": ["summon"], "remove": ["buff"]}}

Key is `"<unit name>|<passive or ability name>"`. Unknown keys or tag ids fail
the build. New tag = one line in `tag_rules.py` (keep regex syntax JS-compatible,
the page reuses the patterns for highlighting).

## Dev

    python3 -m pytest -q
