local data = {
	-- ================================
	-- RARITY: Vanguard
	-- ================================
	["Holy Sword"] = {
		rarity = "Vanguard",
		exclusive_unit = "Saber (King of Knights)",
		obtainment = "Wrath Event Shop (1,000 Wrath Coins)",
		passives = {
			{
				name = "Golden Blade",
				description = "Gains 3000% Damage.",
			},
			{
				name = "Promised Victory",
				description = "Buffs {{Element|Holy}} and {{Element|Curse}} units' Damage by 40%; Buffs {{Group|Crimson Moon}} allies' Active Ability damage by 50%; This unit gains Excalibur on placement and its damage now counts as Ability Damage; Excalibur damage is lowered to 200% but its cooldown is lowered to 60 seconds; Excalibur's damage cap from kills is raised from 25% to 100%; When Saber (Black Tyrant) uses Dark Excalibur, this unit gains the same damage buff for that window and follows up with Excalibur, which counts towards Gilgamesh NP Stacks.",
			},
			{
				name = "Sealed Wind",
				description = "Attacks apply {{Effects|Blight}} for 10 seconds; Sealed Blade of the Wind King no longer falls off after Upgrade 5; Enemies on {{Effects|Repulse}} lockout take 50% more damage from this unit; Hitting an enemy on {{Effects|Repulse}} lockout follows up with Attack 1 for 50% damage; King of Knights starts from placement; When a {{Effects|Blight}} inflicted enemy takes damage from a {{Group|Crimson Moon}} ally, this unit deals an instance of damage equal to 1% of its damage, counting as a follow-up. {{Effects|Blight}}: afflicted enemies take 30% more damage from {{Element|Holy}} and {{Element|Curse}} units.",
			},
		},
	},

	["Iron Helmet"] = {
		rarity = "Vanguard",
		exclusive_unit = "The Falcon (Sacrifice)",
		obtainment = "Wrath Event Shop (1,000 Wrath Coins)",
		passives = {
			{
				name = "King of Darkness",
				description = "Buff damage by 2000%.",
			},
			{
				name = "What I Hold Dear",
				description = "Buff the damage of all {{Element|Cosmic}} units by 40%; Buff the damage of all {{Group|Berk}} units by 40%; Demons spawned by the eclipse no longer attack or remove your units; Gain Sacrificed stacks and a new active, Unholy Transformation; Each demon that collides with a branded enemy grants 1 Sacrificed stack; Taking the next form no longer upgrades this unit to max; I, Sacrifice no longer ends on its own, it ends when Unholy Transformation is used; At 100 Sacrificed stacks can activate Unholy Transformation (transforming consumes all stacks), for every 50 stacks over 100 this unit gains 50% Damage, 50% Crit Damage and upgrades self by 1. Carries over between forms, upgrades also carry over between forms. (Caps out at 500% Damage and 500% Crit Damage).",
			},
			{
				name = "Causality Flows",
				description = "Whenever an ally deals sourceless damage, this unit follows up with its first attack; {{Effects|Bleed}} applied by this unit or an ally becomes {{Effects|Opportunity}} for 30 seconds instead; Whenever an ally rolls for a critical hit and fails it, this unit follows up with its second attack; Every enemy is branded as it spawns, and branded enemies take 10% more damage from {{Group|Berk}} units.",
			},
		},
	},

	["Black Smith's Hammer"] = {
		rarity = "Vanguard",
		exclusive_unit = "The Smith (Forged)",
		obtainment = "Wrath Event Shop (1,000 Wrath Coins)",
		passives = {
			{
				name = "A Smith's Legend",
				description = "Increases Yen gain from farms by 30%.",
			},
			{
				name = "Material Fetcher",
				description = "Buff the damage of every {{Element|Fire}} unit by 50% and every {{Group|Berk}} unit by 40%; Unlocks the Hunter Quest active ability; Masterworks are now crafted from the Hunter Quest menu and cost materials instead of being free; Completing a quest grants Yen based on its difficulty (Easy 1000, Average 3000, Hard 7000, Nightmare 10000) once per wave and this unit counts as a farm; Enemies spawned by quests do not count toward kills, takedowns, or damage totals; Up to 3 of the same Masterwork can be crafted per player.",
			},
		},
	},

	["Scrap Bluntsword"] = {
		rarity = "Vanguard",
		exclusive_unit = "NotGoodGuy (Free)",
		obtainment = "Wrath Event Shop (1,000 Wrath Coins)",
		passives = {
			{
				name = "Ready Or Not",
				description = "Gains 1000% Damage. Gain 100% more meter.",
			},
			{
				name = "Smell of the Game",
				description = "Buff the damage of every {{Element|Fire}} ally by 80%; Dragon Install unlocks on placement as both an active and a passive; Hell now consumes 30% meter to make the next attack hit every enemy in range and no longer detonates; During Dragon Install this unit only stops building meter from attacks, every Guilty Cog unit gains 50% Crit Rate, this unit bypasses its animation cancel lockout and its Follow Up attack loses its cooldown, but Follow Up can only occur after a base attack; Increases duration of Burns applied by this unit to 10 seconds; Follow Up attacks detonate every instance of {{Effects|Burn}} and for 110% damage.",
			},
			{
				name = "Find Your One Way",
				description = "Buff the damage of every {{Group|Video Games}} unit by 50% and their range by 20%; Every instance of {{Effects|Burn}} inflicted on an enemy grants this unit 1% meter; Buff this unit's damage by its current meter percentage; During Dragon Install, inflicting {{Effects|Burn}} also {{Effects|Slow}} the enemy by 50% for 10 seconds; While another Guilty Cog unit is on the field, increase this unit's meter gain by a further 200% and its attacks strip 20% of the maximum from any enemy that has it; When another Guilty Cog unit burns meter, this unit gains 10% of the meter burned.",
			},
		},
	},

	["Witch's Staff"] = {
		rarity = "Vanguard",
		exclusive_unit = "Medea (Witch of Betrayal)",
		obtainment = "Wrath Event Shop (1,000 Wrath Coins)",
		passives = {
			{
				name = "Witch of Colchis",
				description = "Gains 3000% Damage.",
			},
			{
				name = "Teeth of the Dragon",
				description = "This unit gains Dragon Fang Army on placement, summoning 2 Warriors, 2 Archers and 1 Beast on a chosen point of the track; Warriors spawn with 60% of this unit's damage, Archers with 40% and the Beast with 200%; A summon that dies to the enemy it hits leaves that enemy with {{Effects|Rupture}}; While a Sokora is placed, every {{Group|Crimson Moon}} unit at or below the highest placed Sokora's upgrade pays 70% less for upgrades, Sokora included; A unit discounted this way cannot have its upgrade cost lowered by any other source.",
			},
			{
				name = "Broken Oath",
				description = "Buffs {{Element|Curse}} and {{Element|Holy}} units' Damage by 40%; This unit gains Oathbreaker on placement and its damage now counts as Ability Damage; Oathbreaker deals 10% of every {{Group|Crimson Moon}} unit's current damage to the selected area, counting each unit once no matter how many of it are placed; Hitting an enemy afflicted with {{Effects|Nullified}} follows up with Attack 2.",
			},
		},
	},
	["Cannon Ball"] = {
		rarity = "Vanguard",
		exclusive_unit = "The Struggler (Rampage)",
		obtainment = "The Struggler Unit Trial",
		passives = {
			{
				name = "Grim Dark Reminder",
				description = "Gains 3000% Damage.",
			},
			{
				name = "Black Swordsman",
				description = "Buffs {{Element|Unbound}} and {{Element|Cosmic}} ally Damage by 40%; While this unit has Berserker Armor active, it can now bypass Animation Lockout but can only attack every 2 seconds; This unit cannot Crit; when they would Crit, instead perform Attack 1 for 200% damage as a follow up to that attack; {{Effects|Bleed|Bleeding}} enemies in range are {{Effects|Slow|slowed}} by 50%; If this unit would apply a {{Effects|Bleed}} to an Enemy but cannot, instead does a sourceless damage instance for 50% of this unit's damage.",
			},
			{
				name = "Perseverance",
				description = "Reduces Injury Stack's self-{{Effects|Stun|stun}} from 3 seconds to 1 second per stack; Increases Damage by 10% per injury stack (Additive to other damage bonus); Attacks inflict {{Effects|Destruction}}; Deals 30% more damage to enemies inflicted with {{Effects|Destruction}}.",
			},
		},
	},
	["Donut"] = {
		rarity = "Vanguard",
		exclusive_unit = "Clatakiri (Mochi)",
		obtainment = "Clatakiri Rerun (Floor 25)",
		passives = {
			{
				name = "Loyal Son",
				description = "Gains 5000% Damage.",
			},
			{
				name = "Bashful Villain",
				description = "When this unit does Attack 6, each hit of Attack 6 will count as an attack for any on-attack Status Effect or Debuff application (Up to 3 effects applied per enemy per attack) (Effect cannot already be applied).",
			},
			{
				name = "Morality's Mirror",
				description = "Buffs {{Element|Water}} units Damage by 80%; If a unit has the ability to inflict {{Effects|Wanted}}, buffs their damage by 50% and range by 20%; Enemies affected by {{Effects|Slow|slow}} take 30% more damage from allies that can inflict {{Effects|Wanted}}; Inflicts {{Effects|Wanted}} to enemies who walk onto this unit's sticky Mochi Spot; If the enemy this unit is targeting is not in range of this unit to be attacked, this unit will teleport to that targeted enemy.",
			},
		},
	},
	["Cell Phone"] = {
		rarity = "Vanguard",
		exclusive_unit = "Divalo (Requiem)",
		obtainment = "Occult Hunt",
		passives = {
			{
				name = "Fear Crusher",
				description = "Gains 5500% Damage.",
			},
			{
				name = "Stolen Time",
				description = "When this unit attacks, all enemies hit have their time stolen, causing them to skip forward 2 seconds' worth of movement and take 1 attack's worth of damage from all allies in this unit's range (20 Second global cooldown per enemy, counts as a Basic attack for the allies involved); Enemies hit by ally Basic attacks are {{Effects|Slow|slowed}} by 50% for 10 seconds; This unit now gets Complete Erasure on placement and its cooldown is reduced to 180 seconds, while enemies are affected by Complete Erasure they take 30% more damage from {{Element|Cosmic}} allies.",
			},
			{
				name = "Cannot Escape Fate",
				description = "Buffs {{Element|Cosmic}} allies' Damage by 30% and Range by 10%; Whenever this unit does a basic attack, this unit does 10% damage of that attack to enemies inflicted with {{Effects|Slow}}; Whenever this unit attacks, follow up with Attack 1.",
			},
		},
	},
	["Monkey King's Circlet"] = {
		rarity = "Vanguard",
		exclusive_unit = "Rogita (Super 4)",
		obtainment = "Gold Shop",
		passives = {
			{
				name = "Prankster",
				description = "Gains 2000% Damage.",
			},
			{
				name = "Time to Get Serious",
				description = "Buffs {{Element|Blast}} units by 80% Damage; When this unit teleports, it leaves a clone at its previous location for 30 seconds. Clones deal 50% less damage. The clone inherits this unit's passives, familiar, and memoria; Gotchya! follows up every third attack and {{Effects|Slow|slows}} all enemies in range by 50% for 30 seconds; Teleporting {{Effects|Stun|stuns}} all enemies in range for 2 seconds.",
			},
			{
				name = "Goofing Around",
				description = "Gains Active Endless Me; Gains 50% Damage per active clone; Clones are guaranteed to critically strike and deal 50% more damage to enemies with Overshield; Reduces Dragon Sphere allies' upgrade costs by 30%.",
			},
		},
	},
	["Sword of Rupture"] = {
		rarity = "Vanguard",
		exclusive_unit = "Gilgamesh (King of Heroes)",
		obtainment = "Gold Shop",
		passives = {
			{
				name = "Filled Arsenal",
				description = "Gains 8000% Damage.",
			},
			{
				name = "King Leading His People",
				description = "Buffs {{Element|Holy}} units' Damage by 80%; Buffs {{Group|Crimson Moon}} allies by 50% damage and 20% range; Attacks apply {{Effects|Nullify}}; Active Ability damage bypasses enemy damage reduction, shield, and overshield; After activating Enuma Elish buffs Crit Damage by 50% for 30 seconds; This unit gains the Passive and Active Enuma Elish on placement; Every 10 Follow Up attacks from allies grant 1 NP stack; No longer loses damage for units in range; Myriad Treasures buff cap for damage is increased from 35% to 300%.",
			},
			{
				name = "Gates of Babylon",
				description = "Gains an NP Stack Amount, every time a non-toggleable Active is used it adds to the NP stack amount by 1 (Up to 30); When Enuma Elish is activated stacks start to reduce at a rate of 1/s attacking a single enemy each time for 100% damage and is guaranteed to crit (Applies on hit effects, targets the strongest enemy); Buffs damage by 10% per NP stack, this buff stays at max value achieved until NP stacks reach zero then resets.",
			},
		},
	},
		["Petrified Soul"] = {
		rarity = "Vanguard",
		exclusive_unit = "Yehowach (Almighty)",
		obtainment = "Rift Shop",
		passives = {
			{
				name = "Return of the King",
				description = "Buff damage by 800%.",
			},
			{
				name = "The King Giveth",
				description = "Attacks inflict a 50% {{Effects|Slow}} for 10 seconds and apply {{Effects|Nullify}}; Peroxide units are immune to Ashfallen's negative effects; Buff the damage of all Peroxide units by 80%.",
			},
			{
				name = "The King Taketh",
				description = "While Ashfallen buffs this unit, this unit takes every self-buff that allies debuffed by Ashfallen would apply to themselves; While Ashfallen debuffs this unit, allies buffed by Ashfallen also apply every status effect this unit would apply. (Both effects exclude damage over time)",
			},
		},
	},
	["Candy Ball"] = {
		rarity = "Vanguard",
		exclusive_unit = "Boo (Evil)",
		obtainment = "Boo Unit Trial",
		passives = {
			{
				name = "Evolving Threat",
				description = "Transforming Terror is unlocked on placement, and all of this unit's takedowns count toward Candy stacks; This unit's summons deal 3x damage to enemies with Overshield and inflict {{Effects|Nullify}}; Intelligence Gained now buffs Crit Rate by 70%.",
			},
			{
				name = "Insurmountable Foe",
				description = "Enemies turned into Candy are {{Effects|Slow|slowed}} by 50% and take 30% more damage from Dragon Sphere allies; If a Dragon Sphere ally in this unit's range buffs a unit, apply that buff to all other Dragon Sphere units.",
			},
			{
				name = "PRODUCE!",
				description = "Buff damage by 3000%.",
			},
		},
	},
	["Rose Bundle"] = {
		rarity = "Vanguard",
		exclusive_unit = "Lfelt (Love)",
		obtainment = "Dungeon Shop",
		passives = {
			{
				name = "Frame Perfect",
				description = "Bypass this unit's animation lockouts after {{ColorText|Nature|text=1}} second; Gain {{ColorText|Nature|text=100%}} more meter; Manually using Shotgun Loop opens a Just Frame check; Using Shotgun Loop again while the marker is inside the window clears the check, and that cast consumes no meter, deals {{ColorText|Nature|text=150%}} more damage, and opens the next check.",
			},
			{
				name = "Looking for Love",
				description = "Buff damage by {{ColorText|Nature|text=3000%}}.",
			},
			{
				name = "Video Game Idol",
				description = "Buff the damage of every Video Game unit on the field by {{ColorText|Nature|text=50%}}; Okizeme no longer has a {{ColorText|Nature|text=5}}-second lockout.",
			},
		},
	},
	["Turtle Symbol"] = {
		rarity = "Vanguard",
		exclusive_unit = "Roku (Super 3)",
		obtainment = "Roku Unit Trial",
		passives = {
			{
				name = "This Is To Go",
				description = "Increases damage by 3000%.",
			},
			{
				name = "Even Further",
				description = "This unit loses its swap meter and any on entry effects now apply on attack (but do not stack); This unit becomes 1 placement; This unit has a swap button above its icon on the unit bar, when pressed it swaps which unit is being placed; When the unplaced unit is placed, the one that is already placed is sold and the incoming placement gains its upgrades; Max upgrade unlocks the Fusion Ability.",
			},
			{
				name = "Beyond",
				description = "When fused, gains Active {{ColorText|Bigspiritbeam|text=Big Spirit Beam}}. If a {{Group|DragonSphere}} ally is sold, teleport to that ally's location; Buffs {{Element|Blast}} units in range by 80%; {{Rarity|Secret|Roku (Super 3)}} gains {{Element|Blast}}; {{Rarity|Secret|Super Vogito}} gains {{Element|Water}}, {{Element|Blast}}, and buffs {{Element|Holy}} by 60%.",
			},
		},
	},
	["Military Cap"] = {
		rarity = "Vanguard",
		exclusive_unit = "Isdead (Romantic)",
		obtainment = "Isdead Rerun (Floor 25)",
		passives = {
			{
				name = "Natural Talent",
				description = "Increases damage by 8000%.",
			},
			{
				name = "Backed Into a Corner",
				description = "Gains Mahokarada and The Perfect Vessel on placement; Gains Actives {{ColorText|Icecavalry|text=Ice Cavalry}} and {{ColorText|Icecommander|text=Ice Commander}}; This unit gains a Cavalry stack anytime it gains a takedown; Whenever this unit activates {{ColorText|Icecavalry|text=Ice Cavalry}}, starts raising an ice soldier for 30% of this unit's damage every 3 seconds.",
			},
			{
				name = "Leader of Ice",
				description = "When placed all {{Element|Passion}} units are marked with {{Effects|Affection}}, then this unit's Blooming Love passive marks a unit; Reduces Mahokarada cooldown to 60 seconds; Buffs self and all {{Element|Water}} units by 60%.",
			},
		},
	},
	["Sealed Spell Scroll"] = {
		rarity = "Vanguard",
		exclusive_unit = "Goblin Killer (Trapper)",
		obtainment = "Lunar Bridge Dungeon Shop",
		passives = {
			{
				name = "Trauma Fueled Cruelty",
				description = "Attacks from this unit {{Effects|Stun}} enemies for 2 seconds; Increase this unit's damage by 10% per trap currently placed by player.",
			},
			{
				name = "No Survivors",
				description = "Increase damage by 800%.",
			},
			{
				name = "The Strength of Friends",
				description = "This unit will now place 1 trap at the nearest point on the track to where allied units are placed; Traps from this unit are guaranteed to crit and this unit has overcrit; Upgrading this unit upgrades all other placements.",
			},
		},
	},
	["Bounty Hunter's Handcuff"] = {
		rarity = "Vanguard",
		exclusive_unit = "Brisket (Yo-Yo)",
		obtainment = "Bounties",
		passives = {
			{
				name = "I'm Not There",
				description = "Buffs {{Element|Spark}} units by 80% Damage; When this unit does an action that would consume a placed Yo-Yo, leaves a Yo-Yo where the unit was; When this unit consumes meter, deals 30% of the damage that action dealt to all enemies on the map; When this unit uses Yo-Yo Follow Up!, automatically uses it again after 0.5 seconds and keeps using it until this unit is out of meter (can no longer generate meter from the Active attack); Increase buff from Town Inside Me to 50% damage per stack.",
			},
			{
				name = "Watching From Afar",
				description = "Whenever this unit uses an Active, cleanse self of all Status Effects; Attacks from this unit {{Effects|Stun}} enemies for 2 seconds; This unit's Ability damage is counted as Follow Up damage; Enemies inflicted with {{Effects|Conduit}} take 70% more damage from Follow Ups by {{Element|Spark}} Units; Decreases Active cost to 30% meter.",
			},
			{
				name = "Everyone's Voice",
				description = "Increase damage by 1000%, Increases Meter Gain from this unit's attacks by 500%, Increases Range by 30%.",
			},
		},
	},
	["Mimic Chest"] = {
		rarity = "Vanguard",
		exclusive_unit = "Friran (Teacher)",
		obtainment = "Alternate Worldline",
		passives = {
			{
				name = "Scholarly Mage",
				description = "Gains 3000% Damage.",
			},
			{
				name = "Grand Adventure",
				description = "Gains the active Grimoire; Every chest this unit opens also yields one Spell Page at random, up to 5 of each; Casting a spell increases this unit's damage by 100% for 60 seconds; Every 15 seconds spent walking the track begins a new side quest, up to 4 at once.",
			},
			{
				name = "Hurried Response",
				description = "Increases Range by 5% for every second spent without attacking. (Resets on attack)",
			},
		},
	},
	["Disguising Mask"] = {
		rarity = "Vanguard",
		exclusive_unit = "Smith John",
		obtainment = "Smith John Unit Trial",
		passives = {
			{
				name = "Overpowering Presence",
				description = "Buffs Damage by 0.5% and Range by 0.2% for every enemy hit by an attack. (Resets on attack); Anytime this unit swaps, it buffs its own damage by 50% for 60 seconds.",
			},
			{
				name = "Becoming Nuclear",
				description = "All Range Atomic now starts at 100% damage per swap instead of 50%; When All Range Atomic is used, this unit buffs itself by that activation's damage amplification for 60 seconds, and the buff is retained through swaps; Assassination now deals 1000% damage to the highest HP target.",
			},
			{
				name = "Insanity in Power",
				description = "Gains 3000% Damage.",
			},
		},
	},
	["King's Crown"] = {
		rarity = "Vanguard",
		exclusive_unit = "Saber (Black Tyrant)",
		obtainment = "Boss Events",
		passives = {
			{
				name = "Wrongs Righted",
				description = "In passive Aura of Corruption, the 20% {{Effects|Slow}} becomes a 50% {{Effects|Slow}} and allies no longer suffer the SPA increase; In passive Dark Excalibur, the damage bonus now increases damage dealt instead of the damage stat; Anytime this unit attacks with Dark Excalibur, it buffs itself by 200% Damage and 30% Range for 60 seconds.",
			},
			{
				name = "Corrupted Knight",
				description = "Gains 6000% Damage.",
			},
			{
				name = "Twisted Protector",
				description = "While a Sokora unit is in range, that unit gains 10% of this unit's damage; Anytime a Sokora in range is sold, its placement is not refunded, this unit immediately readies Dark Excalibur, and buffs its own damage by 300% for 60 seconds.",
			},
		},
	},
	["Familial Jewel"] = {
		rarity = "Vanguard",
		exclusive_unit = "Dawntay (Jackpot)",
		obtainment = "Dawntay Unit Trial",
		passives = {
			{
				name = "In Debt",
				description = "Gains 8000% Damage.",
			},
			{
				name = "Don't Say It",
				description = "While transformed, this unit ignores its animation lockout but cannot attack faster than once per second; Reaching a combo rank grants a buff: A grants 10% Damage for 20 seconds, S grants 20% Damage for 30 seconds, SS grants 40% Damage for 60 seconds, and SSS grants Overcrit for 60 seconds.",
			},
			{
				name = "Royal Guard",
				description = "This unit is immune to Status Debuffs and Status Effects; Anytime a status debuff or status effect is attempted on this unit, it counters for 300% damage and is guaranteed to crit, at most once per attack this unit makes. (A damage instance, not an attack)",
			},
		},
	},
	["Family Painting"] = {
		rarity = "Vanguard",
		exclusive_unit = "Chaso (Blood Curse)",
		obtainment = "Portals",
		passives = {
			{
				name = "Piercing Blood",
				description = "Gains a Blood meter. Each time this unit inflicts {{Effects|Bleed}} it gains 1 Blood Stack, up to 200, and unlocks Blood Arts: an active menu to channel Flowing Red Scale or unleash Piercing Blood.",
			},
			{
				name = "Toxic Blood",
				description = "Anytime this unit inflicts {{Effects|Bleed}}, inflict {{Effects|Diseased}} and {{Effects|Slow}} the enemy by 50% for the duration of the {{Effects|Bleed}}.",
			},
			{
				name = "Separated at Birth",
				description = "Gains 3000% Damage.",
			},
		},
	},
	["Molten Rocks"] = {
		rarity = "Vanguard",
		exclusive_unit = "Jag-o (Volcanic)",
		obtainment = "Portals",
		passives = {
			{
				name = "The Lava Spirit",
				description = "Attacks apply {{Effects|Burn}} for 150% of this unit's damage over 8 seconds.",
			},
			{
				name = "King of the Iron Coffin",
				description = "Gains Iron Coffin on placement; During Iron Coffin, whenever {{Effects|Burn}} or {{Effects|Intense Burn}} ends, deal 50% of the damage that instance of DoT did in total; When Iron Coffin ends, detonate all instances of {{Effects|Intense Burn}} for all the damage that instance has dealt; All {{Effects|Black Flames}}, {{Effects|Intense Burn}}, and {{Effects|Burn}} tick twice as fast during the domain.",
			},
			{
				name = "Hazardous Disregard",
				description = "Gains 8000% Damage.",
			},
		},
	},
	["Vibraslap"] = {
		rarity = "Vanguard",
		exclusive_unit = "Todu (Unleashed)",
		obtainment = "Portals",
		passives = {
			{
				name = "Boogie Technique",
				description = "Whenever this unit uses its Boogie active on a unit, that unit gets marked as My Brother!; Anytime this unit attacks, My Brother also attacks if able, and they swap positions; Buffs My Brother by 30% damage and 20% range; Only 1 unit globally can be marked as My Brother at a time, and selling this unit removes the buff; Boogie's cooldown is set to 0 and becomes a global cooldown; Units no longer need to be in range.",
			},
			{
				name = "The Main Man",
				description = "If this unit attacks an enemy with Damage Resistance, it deals zero damage but the unit marked with My Brother deals 50% more damage on its next attack.",
			},
			{
				name = "Clap!",
				description = "Gains 400% Damage and 40% Range.",
			},
		},
	},
	["Heavenly Spear"] = {
		rarity = "Vanguard",
		exclusive_unit = "Tuji (Sorcerer Killer)",
		obtainment = "Adventure",
		passives = {
			{
				name = "Absent Father",
				description = "Increases Damage by 4000%.",
			},
			{
				name = "Strategic Weakpoint",
				description = "Anytime this unit removes a shield from an enemy, the damage that attack deals is multiplied by 25% of the amount of shield that was removed.",
			},
			{
				name = "Arsenal of Weapons",
				description = "Cursed Inventory is now unlocked on placement; When using Domain Breaker, removes 50% of an enemy's current overshield on attack, attacks inflict {{Effects|Nullified}}, attacks inflict {{Effects|Rupture}}, and this unit deals 500% more damage to bosses; When using Chain Blitz, this unit now does random attacks and attacks nonstop.",
			},
		},
	},
	["Immunoblocker"] = {
		rarity = "Vanguard",
		exclusive_unit = "Dave (Cyber Psycho)",
		obtainment = "Adventure",
		passives = {
			{
				name = "The Legend",
				description = "Increases Damage by 2000%.",
			},
			{
				name = "Immortalized",
				description = "Gains 10% Damage every wave when placed; When this unit is sold, deletes all placements of itself and can no longer be placed, then buffs {{Rarity|Exclusive|Luce}} for 600% Damage and 50% Range; This unit is upgraded when {{Rarity|Exclusive|Luce}} is upgraded.",
			},
			{
				name = "Will Always Protect You",
				description = "If there is no enemy in range, this unit teleports to the enemy in first; Whenever a {{Rarity|Exclusive|Luce}} on the map attacks an enemy, this unit teleports to that enemy; {{Rarity|Exclusive|Luce}} no longer needs to be in range for the Cyber Psycho passive to work; Deals 80% more damage to {{Effects|Nullified}} enemies.",
			},
		},
	},
	["His Jacket"] = {
		rarity = "Vanguard",
		exclusive_unit = "Luce (Hacker)",
		obtainment = "Adventure",
		passives = {
			{
				name = "Home on the Moon",
				description = "Removes the local cooldown from the My Moon passive; Anytime this unit attacks an enemy inflicted with {{Effects|Nullified}}, gains 1 chip stack; Deals 80% more damage to {{Effects|Nullified}} enemies.",
			},
			{
				name = "Running on the Edge",
				description = "Gains the active Hacking and the active Upgrade Supplier; {{Effects|Nullify}} now gets applied permanently.",
			},
			{
				name = "Really Wanna Stay",
				description = "Increases Damage by 2500%.",
			},
		},
	},
	["Magic Dagger"] = {
		rarity = "Vanguard",
		exclusive_unit = "Ali (Djinn)",
		obtainment = "Events",
		passives = {
			{
				name = "Salamander's Magic",
				description = "Increases Damage by 1500%.",
			},
			{
				name = "Mage of Burning Desire",
				description = "Anytime this unit applies {{Effects|Burn}} on an enemy or attacks an enemy inflicted with {{Effects|Burn}}, this units DoT or Detonations bypass enemy damage resistances and apply {{Effects|slow}} for 50% for 10 seconds.",
			},
			{
				name = "Magical Fire Explosion",
				description = "Increases the damage of this unit's detonations by 1% per {{Effects|Burn}} stack during that detonation; Fire Manipulation no longer immediately detonates {{Effects|Burn}} and instead is on a 15 second cooldown.",
			},
		},
	},
	["Fan's of Flame"] = {
		rarity = "Vanguard",
		exclusive_unit = "Hebano (Clematis)",
		obtainment = "Events",
		passives = {
			{
				name = "Tree of Flames",
				description = "Increase Range by 30%.",
			},
			{
				name = "Burning Passion",
				description = "When this unit re-applies a {{Effects|Burn}}, buff all units in range by 50% damage for 10 seconds.",
			},
			{
				name = "Domineering Leader",
				description = "Increases range by 100%, this unit loses 20% range from this buff per upgrade.",
			},
		},
	},
	["Tall Hat"] = {
		rarity = "Vanguard",
		exclusive_unit = "Newsman (Forecast)",
		obtainment = "Events",
		passives = {
			{
				name = "Forecast",
				description = "Increase Range by 30%.",
			},
			{
				name = "Meteorologist",
				description = "Anytime {{Effects|bubbled}} gets removed in range, inflict that enemy with 10% {{Effects|Burn}} for 8 seconds and reapply {{Effects|bubbled}}; {{Effects|Bubbled}} can now be applied alongside other damage amps, if applied this way it is not considered a damage amp and is applied for half value.",
			},
			{
				name = "Plague of Snails",
				description = "For every stack of {{Effects|Burn}} of the highest HP enemy in range increase range by 2%. (Up to 100%); Can now {{Effects|slow}} bosses.",
			},
		},
	},
	["Scarf of the Black Dragon"] = {
		rarity = "Vanguard",
		exclusive_unit = "Hei (Black Dragon)",
		obtainment = "Events",
		passives = {
			{
				name = "Forbidden Training",
				description = "Increase {{Effects|Burn}} damage from this unit to 100% of this unit's damage; If an enemy with {{Effects|Black Flame}}'s dies in this unit's range, all enemies within 10 studs of the killed enemy that are not inflicted with {{Effects|Black Flames}} becomes inflicted with {{Effects|Black Flames}} for its value on enemy death.",
			},
			{
				name = "Fear of the Black Dragon",
				description = "Increase Damage by 700%.",
			},
			{
				name = "Ancient Assassination Technique",
				description = "{{Effects|Black Flames}} now are applied permanently; Dragon Flame Absorption no longer removes burns and instead gains the same buff per amount of {{Effects|Burn}} stacks on the enemy.",
			},
		},
	},
	["Grimoire of Lion Flames"] = {
		rarity = "Vanguard",
		exclusive_unit = "Leo (Fangs)",
		obtainment = "Events",
		passives = {
			{
				name = "The Fire Mage Cometh",
				description = "Increase Damage by 800%.",
			},
			{
				name = "It Takes Guts",
				description = "When this unit loses Range, inflict all enemies in range with {{Effects|Burn}} for 10% damage over 8 seconds.",
			},
			{
				name = "A Lion's Pride",
				description = "Show Me Your Full Power! now becomes uncapped; Hellfire Incarnate now reduces Range by 1% per attack; While Hellfire Incarnate is active, attacks buff range by 50% for 6 seconds; While range is less than 20, buff damage by 200%.",
			},
		},
	},
	["Blazing Solstice"] = {
		rarity = "Vanguard",
		exclusive_unit = "Iscanur (Pride)",
		obtainment = "Events",
		passives = {
			{
				name = "Earned Arrogance",
				description = "Increase Damage by 200%.",
			},
			{
				name = "Controller of the Sun",
				description = "This unit gains 1 hour stack every 30 seconds; When this unit is upgraded, gains 1 hour stack; Increases the buff at max hour stacks from 30% damage to 100% damage; This unit gains Ultimate on placement.",
			},
			{
				name = "Prideful Blaze",
				description = "When this unit attacks an enemy inflicted with {{Effects|Burn}}, follow up with Attack 3; Follow ups from this unit apply Intense Burn for 70% of this unit's damage, increase this value by 5% per {{Effects|Burned}} unit slot.",
			},
		},
	},
	["Sun God's Mask"] = {
		rarity = "Vanguard",
		exclusive_unit = "Quetzalcoatl (Sun God)",
		obtainment = "Events",
		passives = {
			{
				name = "Fated Leader",
				description = "Increases Damage by 300%.",
			},
			{
				name = "Sun God's Sacrifice",
				description = "If the attack the unit is doing is different than the previous attack, buff all {{Effects|Fire}} allies in range 20% Damage stacking; This buff resets when an attack is repeated; Increases Range by 1% per {{Effects|Burn}} stack on the highest Max HP enemy in range.",
			},
			{
				name = "Noble Phantoms",
				description = "Whenever this unit inflicts {{Effects|Burn}} on an enemy, inflict 1 additional stack of {{Effects|Burn}} on that enemy per different attack that has occured in a cycle; This amount resets when an attack is repeated; On hitting an enemy with a repeated attack, Detonate all {{Effects|Burn}} stacks for 130% of their damage value.",
			},
		},
	},
	["Gujo's Glasses"] = {
		rarity = "Vanguard",
		exclusive_unit = "Gujo (Infinity)",
		obtainment = "Events",
		passives = {
			{
				name = "Split Second Decision",
				description = "When an enemy leaves this units range, activates 'Void' for 2 seconds, and fires attack 3 on that enemy. (20 Second cooldown).",
			},
			{
				name = "The Honored One",
				description = "Increases damage by 250%",
			},
			{
				name = "Gifted Genius",
				description = "Damage boost from Void stays active for 30 seconds after activation.",
			},
		},
	},
	["Sukono's Finger"] = {
		rarity = "Vanguard",
		exclusive_unit = "Sukono",
		obtainment = "Events",
		passives = {
			{
				name = "The King of Curses",
				description = "This unit applies Cleaved on every attack, and buffs all Curse units by 30%.",
			},
			{
				name = "The Cursed One",
				description = "Increases damage by 200% and range by 30%.",
			},
			{
				name = "Chef's Preparations",
				description = "Anytime this unit first inflicts Cleaved on an enemy, immediately follow up with Attack 2.",
			},
		},
	},
	["Tengon's Smokebomb"] = {
		rarity = "Vanguard",
		exclusive_unit = "Tengon (Flashiness)",
		obtainment = "Events",
		passives = {
			{
				name = "Sound Blitz",
				description = "Anytime this unit attacks a debuffed enemy, guarantees crit and buffs crit damage by 30% for 40 seconds. (Cannot stack)",
			},
			{
				name = "God of Sound",
				description = "Gains 275% Damage.",
			},
			{
				name = "Firework's Blast",
				description = "Gains the Fire element, buffs Fire and Blast allies by 30% damage; Attacks inflict Scorched on enemies.",
			},
		},
	},
	["Key of Babylon"] = {
		rarity = "Vanguard",
		exclusive_unit = "Gilgamesh (King of Heroes)",
		obtainment = "Events",
		passives = {
			{
				name = "King's Revival",
				description = "Gains 125% Damage.",
			},
			{
				name = "King of Heroes",
				description = "If attacking a non boss enemy, inflicts Slow for 30% for 20 seconds; If attacking a boss enemy inflicts Stun for 2 seconds.",
			},
			{
				name = "Gates of Babylon",
				description = "Gains a NP Stack Amount, every time this unit attacks adds to the NP stack amount by 1 (Up to 30); When Enuma Eilish is activated stacks start to reduce at a rate of 1/s attacking a single enemy each time for 100% damage.",
			},
		},
	},
	["Secluded Kunai"] = {
		rarity = "Vanguard",
		exclusive_unit = "Obita (Awakened)",
		obtainment = "Events",
		passives = {
			{
				name = "Transporting Shinobi",
				description = "Selling this unit gives you no money back, but instead the next Obita (Awakened) placed is free and retains the upgrade of the previous. (10 Second cooldown).",
			},
			{
				name = "Waking Up",
				description = "Anytime Obita (Awakened) is placed, Burn all enemies in range for 30% of this units damage for 8 seconds.",
			},
			{
				name = "Strength of Self",
				description = "Gains 650% Damage and 20% Range.",
			},
		},
	},
	["American Flag"] = {
		rarity = "Vanguard",
		exclusive_unit = "Valentine (Love Train)",
		obtainment = "Events",
		passives = {
			{
				name = "Election Won",
				description = "Gains 700% Damage.",
			},
			{
				name = "Invulnerable",
				description = "If this unit is sold while a clone is active, swaps spots with the nearest clone; Takedowns now count for A Gift From the Other Side passive.",
			},
			{
				name = "Mr. President",
				description = "Uncaps available clones from This is Another Me, generates 1 use of This is Another Me every 10 seconds, and clones now take the range of the original.",
			},
		},
	},
	["Eyes of Despair"] = {
		rarity = "Vanguard",
		exclusive_unit = "Sosuke (Storm)",
		obtainment = "Events",
		passives = {
			{
				name = "Rogue Shinobi",
				description = "Gains 400% Damage.",
			},
			{
				name = "Wielder of Lightning",
				description = "This unit creates an arc of lightning between itself and one Spark unit in range, this arc deals 40% of this units damage per second and counts as an attack.",
			},
			{
				name = "Dramatic Entrance",
				description = "On placement this unit attacks all enemies in range once (30s Local Cooldown). (Per-Player).",
			},
		},
	},
	["Vampire's Seal"] = {
		rarity = "Vanguard",
		exclusive_unit = "Alocard (Vampire King)",
		obtainment = "Events",
		passives = {
			{
				name = "Vampiric Thralls",
				description = "This unit's summons HP is doubled; When an enemy is hit by a summon from this unit, it is marked; When marked enemies die they are summoned as a random Thrall.",
			},
			{
				name = "Vampire's Awakening",
				description = "Gains 1200% Damage.",
			},
			{
				name = "Grievous Wounds",
				description = "Increases damage increase by Wounded from 20% to 35%; When attacking an enemy with Bleed, Slows them by 50% for 5 seconds.",
			},
		},
	},
    ["Burning Blade"] = {
		rarity = "Vanguard",
		exclusive_unit = "Yomomata (Captain)",
		obtainment = "Odyssey Adventure",
		passives = {
			{
				name = "Undying Flame",
				description = "Gains 700% Damage.",
			},
			{
				name = "Long Lost Cruelty",
				description = "Every other skeleton spawn from South now spawns from the edge of the map walking towards the enemy that is in first, Skeletons spawned this way do not have their movement stopped from North; When pressing North while it is on cooldown, detonate all stopped skeletons from 100% of this unit's damage in a 20 stud range around the skeleton (This damage counts as basic attack damage).",
			},
			{
				name = "Seasoned Veteran",
				description = "Release now unlocks on placement; South now spawns skeletons on takedowns instead of kills; Anytime this unit applies Burn to an enemy, apply an additional instance of Burn for 100% of this unit's damage for 8 seconds; For every stack of Burn on an enemy deal 2% more damage from basic attacks.",
			},
		},
	},

	-- ================================
	-- RARITY: Secret
	-- ================================
	["Tempting Devil"] = {
		rarity = "Secret",
		obtainment = "Dungeons",
		passives = {
			{
				name = "Ghastly Thief",
				description = "Attacks inflict Wounded; Whenever this unit attacks an enemy inflicted with a debuff, buff self by 3% damage per debuff (This Damage Buff is reset after the next attack); Devil's Chains attack stuns self for 4 seconds.",
			},
		},
	},
	Harpist = {
		rarity = "Secret",
		obtainment = "Dungeons",
		passives = {
			{
				name = "Awakening",
				description = "Whenever this unit attacks, buffs self and allies by 40% damage and 10% range; This unit deals 100% more damage to enemies with overshield (This damage dealt increase stays even if that enemy has overshield removed).",
			},
		},
	},
	Trenchcoat = {
		rarity = "Secret",
		obtainment = "Dungeons",
		passives = {
			{
				name = "Thunderous Attacker",
				description = "Attacks inflict Stun for 2 seconds; Whenever this unit does a base attack, follow up with Cross Slash for 50% damage.",
			},
		},
	},
	["Chosen Savior"] = {
		rarity = "Secret",
		obtainment = "Dungeons",
		passives = {
			{
				name = "Omnipotence",
				description = "When this unit uses an ability, buff self by 40% damage for 30s; When this unit crits, inflict Time Stop to all enemies in range for 2s; Deal 40% more damage to enemies on Time Stop lockout; Dawn Star attack removes all Status Effects and Debuffs on all allies in range of this unit.",
			},
		},
	},
	["The Doctor"] = {
		rarity = "Secret",
		obtainment = "Act 1 of HAPPY Factory Raid with a 2% chance; Act 2 of HAPPY Factory Raid with a 50% chance",
		passives = {
			{
				name = "A Doctor's Touch",
				description = "Gains an effect depending on the corruption applied:\n● Corruption I: The equipped unit now applies Nullify on their attacks.\n● Corruption II: The equipped unit now applies Rupture on their attacks.\n● Corruption III: The equipped unit's price is decreased by 10%.\n● Corruption IV: The equipped unit now does 5 extra hits to Shielded enemies.",
			},
			{
				name = "Human Understanding",
				description = "DMG +10.0% - +20.0% (15%-30%); RNG +10.0% - +20.0% (15%-30%)",
			},
		},
	},
	["Birb"] = {
		rarity = "Secret",
		obtainment = "Act 1 of Ruined City Raid with a 1% chance; Act 2 of Ruined City Raid with a 3% chance",
		passives = {
			{
				name = "Pet Bird",
				description = "Random Water, Spark, Blast DMG +2.0% - +5.0%",
			},
			{
				name = "Ventriloquism",
				description = "Changes DMG by -/+20.0% (20%-30%) Changes Critical Damage by -/+30.0% (30%-45%), Changes Range by -/+20.0% (-20%-30%), Changes Critical Chance by -/+20.0% (20%-30%). (For the lower bound of corruption, it is based off the max positive stat, with the minimum gain from corruption 3)",
			},
		},
	},
	["Silly Fairy"] = {
		rarity = "Secret",
		obtainment = "Act 1-3 of Burning Spirit Tree Legend Stages with a 1% Chance; Act 4 of Burning Spirit Tree Legend Stage with a 5% Chance",
		passives = {
			{
				name = "Fantasy Spirit",
				description = "Random Curse, Cosmic or Nature DMG +2.0% - +5.0%",
			},
			{
				name = "Whimsical Being",
				description = "For every placement of this unit placed, decreases upgrade cost by 0.0% - 5.0% (0%-7.5%).",
			},
		},
	},

	-- ================================
	-- RARITY: Mythic
	-- ================================
		Snowcone = {
		rarity = "Mythic",
		obtainment = "Dungeons",
		passives = {
			{
				name = "Frost Familiar",
				description = "Attacks freeze enemies for 2 seconds.",
			},
		},
	},
	Fairy = {
		rarity = "Mythic",
		obtainment = "Dungeons",
		passives = {
			{
				name = "Wind Familiar",
				description = "Increases damage by 50%.",
			},
		},
	},
	Flower = {
		rarity = "Mythic",
		obtainment = "Dungeons",
		passives = {
			{
				name = "Nature Familiar",
				description = "Makes unit immune to status effects and status debuffs.",
			},
		},
	},
	["Winged Being"] = {
		rarity = "Mythic",
		obtainment = "Dungeons",
		passives = {
			{
				name = "Holy Penetration",
				description = "Attacks bypass enemy damage resistance; Ability damage from this unit will pop any Corruption built up on an enemy for 150% of the built value.",
			},
		},
	},
	["Lost Girl"] = {
		rarity = "Mythic",
		obtainment = "Dungeons",
		passives = {
			{
				name = "Death Touch",
				description = "Attacks apply Corruption; When attacking an enemy with Corruption applied to it, deals 50% more damage.",
			},
		},
	},
	Samurai = {
		rarity = "Mythic",
		obtainment = "Dungeons",
		passives = {
			{
				name = "Preemptive Slash",
				description = "Gains 40% Crit Rate and Overcrit; Anytime this unit crits, buff self by 50% damage for 20 seconds.",
			},
		},
	},
	["Compass Pose"] = {
		rarity = "Mythic",
		passives = {
			{
				name = "Sense of Direction",
				description = "Needs a navigator to understand.",
			},
		},
	},
	["Chili"] = {
		rarity = "Mythic",
		obtainment = "Frozen Volcano Dungeon Shop",
		passives = {
			{
				name = "Sleight of Hand",
				description = "Random Unbound, Spark or Blast DMG +2.0% - +5.0%",
			},
			{
				name = "Reliable Friend",
				description = "Anytime this unit crits, increases crit damage by 0% - 40.0% (0%-60%) (Cannot Stack).",
			},
		},
	},
	["Black Spirit"] = {
		rarity = "Mythic",
		obtainment = "Ruined City Raid Shop",
		passives = {
			{
				name = "Darkness Consumes",
				description = "Random Blast, Spark or Nature DMG +2.0% - +5.0%",
			},
			{
				name = "Dark Spirit",
				description = "Any Attack that would generate meter generates 0.1% - 100% (0.1%-150%) more meter.",
			},
		},
	},
	["Belu"] = {
		rarity = "Mythic",
		obtainment = "Dungeon Shop",
		passives = {
			{
				name = "King of the Ants",
				description = "Random Curse, Fire or Unknown DMG +2.0% - +5.0%",
			},
			{
				name = "For the King",
				description = "Attacks on hit consume the 5 lowest HP summons on the field buffing damage of that attack by 5.0% - 20.0% (5%-30%).",
			},
		},
	},
	["Gon"] = {
		rarity = "Mythic",
		obtainment = "Rift Shop",
		passives = {
			{
				name = "Artificial Spirit",
				description = "Random Cosmic, Spark or Nature DMG +2.0% - +5.0%",
			},
			{
				name = "Spirit Candy",
				description = "Attacks ignore 10.0% - 50.0% (10%-75%) damage reduction.",
			},
		},
	},
	["Pachiru"] = {
		rarity = "Mythic",
		obtainment = "Rift Shop",
		passives = {
			{
				name = "Lieutenant",
				description = "Random Cosmic, Fire or Unbound DMG +2.0% - +5.0%",
			},
			{
				name = "Thirst for Battle",
				description = "Every time the equipped unit is stunned increases damage by +1.0% - +10.0%. (Up to +30.0% (1%-45%)).",
			},
		},
	},
	["Foo"] = {
		rarity = "Mythic",
		obtainment = "Rift Shop",
		passives = {
			{
				name = "Foo, Foo!",
				description = "Random Curse, Holy, Passion DMG +2.0% - +5.0%",
			},
			{
				name = "Primate Murder",
				description = "Anytime the equipped unit applies an effect on an ally, buff that ally or allies damage by +2.0% - +10.0% (2%-15%).",
			},
		},
	},
	["Bodobi"] = {
		rarity = "Mythic",
		obtainment = "Act 3 of Land of The Gods Legend Stage with a 5% chance",
		passives = {
			{
				name = "The Last Wizard",
				description = "Random Cosmic, Blast or Holy DMG +2.0% - +5.0%",
			},
			{
				name = "Manipulating Evil",
				description = "All kills by this unit count as 0 - 2 (0-3) kills for any on-kill effects. (Does not apply to anything with meters).",
			},
		},
	},
	["Pupper"] = {
		rarity = "Mythic",
		obtainment = "Act 3 of Land of The Gods Legend Stage with a 5% chance",
		passives = {
			{
				name = "A Good Boy",
				description = "Random Nature, Blast or Holy DMG +2.0% - +5.0%",
			},
			{
				name = "Man's Best Friend",
				description = "Increases Crit Rate by +1% - +5% (1%-7.5%) And Crit Damage by +2.5% - +10.0% (2.5%-15%); This buff is doubled for Dragon Sphere Units.",
			},
		},
	},
	["Ro Jer"] = {
		rarity = "Mythic",
		obtainment = "Act 3 of Shining Castle Legend Stages with a 5% Chance; Act 4 of Shining Castle Legend Stage with a 10% Chance",
		passives = {
			{
				name = "Killing Machine",
				description = "Random Nature, Unbound or Spark DMG +2.0% - +5.0%",
			},
			{
				name = "Warrior's Spirit",
				description = "Enemies hit by this unit have their HP Regeneration reduced by +1% - +50.0% (1%-75%) permanently. (Does not stack).",
			},
		},
	},
	["Nose"] = {
		rarity = "Mythic",
		obtainment = "Act 1-6 of Hill of Swords Story Stages with a 10% Chance",
		passives = {
			{
				name = "Nose",
				description = "Random Unbound, Cosmic or Nature DMG +2.0% - +5.0%",
			},
			{
				name = "Light in the Dark",
				description = "Anytime this unit attacks, stun this unit for 2 seconds; If this unit is stunned increase damage by 0.0% - 35.0% (0%-52.5%) for the duration of the stun +5 seconds.",
			},
		},
	},

	-- ================================
	-- RARITY: Exclusive
	-- ================================
	["Doggo"] = {
		rarity = "Exclusive",
		obtainment = "Gift Box 1 10% (Update 3.0 Winter Event / Legacy Event Shop)",
		passives = {
			{
				name = "Avatar",
				description = "Increases damage by +0.1% - +2.0% (0.1%-3%), for each unique element on the team.",
			},
			{
				name = "Elementalist",
				description = "Random Fire, Spark or Water DMG +0.5% - +2.0%",
			},
		},
	},
	["Sebamon"] = {
		rarity = "Exclusive",
		obtainment = "Gift Box 2 10% (Update 3.0 Winter Event / Legacy Event Shop)",
		passives = {
			{
				name = "Fireworks",
				description = "Random Fire, Spark or Blast DMG +0.5% - +2.0%",
			},
			{
				name = "Unified",
				description = "Increases damage by +0.5% - +2.0% (0.5%-3%), for every matching element on the team that is the same as the equipped unit.",
			},
		},
	},
	["Padoru"] = {
		rarity = "Exclusive",
		obtainment = "Gift Box 3 10% (Update 3.0 Winter Event / Legacy Event Shop)",
		passives = {
			{
				name = "Padoru!",
				description = "Every 10 - 60 (5-30) seconds Padoru gives a random present.",
			},
			{
				name = "Padoru",
				description = "Random Holy, Cosmic or Passion DMG +0.5% - +2.0%",
			},
			{
				name = "Padoru Present",
				description = "Buffs a single random tower in range by +10% DMG or +10% RNG for 10 seconds.\nOR\nGives 100 Yen.\nOR\nPermanently decreases a random tower's upgrade cost by 5% (only applies once)",
			},
		},
	},
	["Strange Cat"] = {
		rarity = "Exclusive",
		obtainment = "Wooden Chest 10% (Update 6.5 Spring Event / Legacy Event Shop)",
		passives = {
			{
				name = "Season of Flowers",
				description = "Random Fire, Blast, Holy, Water, Spark, Passion, Nature, Curse, Unbound, Cosmic, Unknown DMG +2.0% - +5.0%",
			},
			{
				name = "Luck of the Gods",
				description = "Increases Damage by +0% - +7% (0%-10.5%) and Range by +0% - +3.5% (0%-4.75%). This familiar can be corrupted up to 5 times; If this familiar rolls Corruption II, It can no longer be corrupted and Corruption II is not applied.",
			},
		},
	},
	["Summer Ham"] = {
		rarity = "Exclusive",
		obtainment = "Iced Box 10% (Update 7.5 Summer Event / Legacy Event Shop)",
		passives = {
			{
				name = "Summer Heat",
				description = "Random Fire, Water or Holy DMG +2.0% - +5.0%",
			},
			{
				name = "Durable Pig",
				description = "Increases damage and damage dealt by DoTs by +1% - +10.0% (1%-15%) per life stock missing.",
			},
		},
	},
	["Yuruzuu"] = {
		rarity = "Exclusive",
		obtainment = "Anniversary Shop",
		passives = {
			{
				name = "24 Karat Gold",
				description = "Random Element DMG +5.0% - +10.0%",
			},
			{
				name = "Yuruzuu",
				description = "Increases money generated by farms by +2.0% - +10.0% (3%-15%)",
			},
		},
	},
	["Turbo Granny"] = {
		rarity = "Exclusive",
		obtainment = "Dropped by any boss in the Infinite mode of the Occult Hunt with a 1% chance.",
		passives = {
			{
				name = "Granny Guidance",
				description = "Random Curse, Nature or Unbound DMG +0.5% - +5.0%",
			},
			{
				name = "Beckoning Cat",
				description = "Critical Chance +10% (10%-15%), Critical Damage +0.5% - +3.0% (0.5%-4.5%) with each attack performed until a critical hit lands.",
			},
		},
	},
	["Alottavisits"] = {
		rarity = "Exclusive",
		obtainment = "Mailbox during 28/4/2025 and after prior to the message being deleted (ONLY ONE).",
		passives = {
			{
				name = "1,000,000,000 Visits",
				description = "Increases damage by +10% (10%-15%), SPA by -5% (-5%-2.5%), and range by +10% (10%-15%)",
			},
			{
				name = "1,000,000,000 Chances",
				description = "Random Fire, Spark, Water, Blast, Nature, Holy, Curse, Unbound, Cosmic, Passion, Unknown DMG +2.0% - +5.0%",
			},
		},
	},
	["Spirit Dispenser"] = {
		rarity = "Exclusive",
		obtainment = "Event",
		passives = {
			{
				name = "Fake Spirit",
				description = "Random Cosmic, Unknown, Blast DMG +2.0% - +5.0%",
			},
			{
				name = "Spirit Boost",
				description = "Anytime this unit activates an active buffs damage by +5% - +30% (5%-45%) for 40 seconds. (Does not stack)",
			},
		},
	},
}

return data