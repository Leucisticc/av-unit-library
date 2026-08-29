local data = {
	-- ================================
	-- RARITY: Vanguard
	-- ================================
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
		rarity = "Mythic",
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