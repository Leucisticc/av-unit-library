local data = {
	--UPDATE 14.5 (25th Hour)--
	["A Beast Plays"] = {
		exclusive_unit = "Wrath (Assault)",
		rarity = "Exclusive",
		passives = {
			{
				description = "Buffs Damage by 20% per different element on the Unit Bar. (Only counts once per unit)",
				name = "Dancho",
			},
			{
				locked = true,
				name = "Lost in Vain",
				description = "Every 30 seconds this unit spawns in a clone that cannot attack; If an Evils Category unit other than this unit were to attack, this clone would reflect that attack to enemies making it deal 2x damage and apply all on hit effects of this unit and the attacker, the clone despawns after 1 attack.",
			},
		},
		base_attack = 2300,
		update_number = 14.5,
		base_range = 2,
	},
	["Bow to Your God"] = {
        base_attack = 2300,
        rarity = "Exclusive",
        exclusive_unit = "Holy Deceiver (Dark)",
        passives = {
            {
                description = "If equipped by a Dragon Sphere unit, buffs Damage by 60%.",
                name = "Mortal Extermination",
            },
            {
                locked = true,
                name = "Ever-evolving Deity",
                description = "When this unit uses its active, upgrade self by one. (40 Second cooldown)",
            },
        },
        base_range = 2,
    },
	["It's Going Down Now"] = {
		base_attack = 2400,
		rarity = "Secret",
		exclusive_unit = "Apathetic Savior",
		passives = {
			{
				description = "Active Ability damage deals 50% more damage.",
				name = "Memories of You",
			},
			{
				locked = true,
				name = "Our Moment",
				description = "While Final Stand Against Death is active, buff this unit's damage by 1000%.",
			},
			{
				locked = true,
				name = "Burn My Dread",
				description = "While either Harpist or Chosen Savior is equipped as this unit's Demon Familiar, buff all allies' damage by 40% and increase Familiar drop rates in the Lunar Bridge Dungeon by 30%.",
			},
		},
		base_range = 2,
	},
    ["Life Will Change"] = {
		base_attack = 2400,
		rarity = "Secret",
		exclusive_unit = "Phantom Thief",
		passives = {
			{
				description = "Demon Controller allies' follow-up attacks deal 70% more damage.",
				name = "Our Beginning",
			},
			{
				locked = true,
				name = "Show Stealer",
				description = "Buff the damage of units with Baton Pass by 50%; they also deal 30% more Active Ability damage.",
			},
			{
				locked = true,
				name = "Get Out There",
				description = "When this unit is placed, place all available Demon Controller units on the team next to it (once per match).",
			},
		},
		base_range = 2,
	},
    ["Reach Out to the Truth"] = {
		base_attack = 2300,
		rarity = "Mythic",
		exclusive_unit = "Investigation Leader",
		passives = {
			{
				description = "If equipped to a Demon Controller unit, buff that unit's Crit Rate by 50%.",
				name = "Specialist",
			},
			{
				locked = true,
				name = "I'll Face Myself",
				description = "While Rest's damage buff is inactive, buff this unit's damage by 50%.",
			},
		},
		base_range = 2,
	},
    ["Princess Rosa"] = {
		base_attack = 2400,
		rarity = "Secret",
		exclusive_unit = "Rebel Fighter (Gauntlet)",
		passives = {
			{
				description = "The first time this unit applies each unique Debuff, buff damage by 10% (stacks up to 100%).",
				name = "Magic User",
			},
			{
				locked = true,
				name = "Combo Fighter",
				description = "While this unit is in a combo string, buff damage by 50%.",
			},
			{
				locked = true,
				name = "Limit Break",
				description = "After using 10 abilities, the next ability deals 300% more damage.",
			},
		},
		base_range = 2,
	},
    ["Want Some"] = {
		base_attack = 2300,
		rarity = "Exclusive",
		exclusive_unit = "Star Crusader (Platinum)",
		passives = {
			{
				description = "Whenever a placement of this unit beyond the initial attacks, that attack deals 50% more damage.",
				name = "Remote Control",
			},
			{
				locked = true,
				name = "Break Down, Break Down",
				description = "Whenever this unit inflicts Time Stop on an enemy, also inflict Nullify on that enemy.",
			},
		},
		base_range = 2,
	},
	--UPDATE 14.0 (Extermination Event Pt. 2)--
	["Special Grade"] = {
		base_attack = 2400,
		rarity = "Secret",
		exclusive_unit = "Cursed Copycat",
		passives = {
			{
				description = "Anytime this unit does an attack for the first time that match, buffs damage by 10%. (Stacks)",
				name = "Copy Cat",
			},
			{
				locked = true,
				name = "Infinite Arsenal",
				description = "Increases damage by 10% and range by 4% for each different attack copied.",
			},
			{
				locked = true,
				name = "A Child's Promise",
				description = "Pure Love's Beam does 100% more damage to bosses.",
			},
		},
		base_range = 2,
	},
    ["Endless Buffet"] = {
		base_attack = 2300,
		rarity = "Mythic",
		exclusive_unit = "Cursed Gourmet",
		passives = {
			{
				description = "Ayntime this unit consumes meter, slow all enemies in range by 50% for 10 seconds.",
				name = "Measured Output",
			},
			{
				locked = true,
				name = "Hungry for a Fight",
				description = "Does between 0% to 100% more damage to an enemy based on how close they are to this unit. (Further = More Damage)",
			},
		},
		base_range = 2,
	},
    ["Sword Priestess"] = {
		base_attack = 2300,
		rarity = "Exclusive",
		exclusive_unit = "Sword Hunter (Void)",
		passives = {
			{
				description = "Anytime this unit consumes stacks, buffs own damage by 50% for 60 seconds.",
				name = "Zen Zephyr",
			},
			{
				locked = true,
				name = "Zero",
				description = "Buffs own damage by 300%, loses 50% per stack of Swordforce currently owned.",
			},
		},
		base_range = 2,
	},
    ["Trauma Turned Strength"] = {
		exclusive_elements = {
			"Unbound",
		},
		rarity = "Secret",
		passives = {
			{
				description = "Attacks from this unit apply Nullify.",
				name = "Heavenly Negation",
			},
			{
				locked = true,
				name = "Speed Blitz",
				description = "Buff this units damage by 1% each time they inflict a debuff on an enemy. (up to 50%)",
			},
			{
				locked = true,
				name = "Resented Lineage",
				description = "Anytime an unbound unit attacks an enemy inflicted with Opportunity, this unit does a follow up of a 4% damage instance.",
			},
		},
		base_range = 2,
		base_attack = 2400,
	},
    ["Journey's End"] = {
		base_attack = 2400,
		rarity = "Secret",
		exclusive_unit = "Friran",
		passives = {
			{
				description = "Anytime this unit goes 20 seconds without attacking, buff damage by 60% for 60 seconds. (Timer starts when this unit attacks)",
				name = "Long Lived Knowledge",
			},
			{
				locked = true,
				name = "Overwhelming Curiosity",
				description = "Anytime this unit opens a chest, gains 2k yen in addition to anything else; 10% Chance to gain a Trinket stack from chests; Trinkets increase damage and yen gain by 5%.",
			},
			{
				locked = true,
				name = "Endless Tomes",
				description = "Every 3 spell pages used, this unit gains 1 spell page at random.",
			},
		},
		base_range = 2,
	},
	--UPDATE 14.0 (Extermination Event Pt. 1)--
	["Graceful Mecha"] = {
		base_attack = 2300,
		rarity = "Exclusive",
		exclusive_unit = "Graceful Pilot (Mecha)",
		passives = {
			{
				description = "While this unit is buffing other units, decrease their SPA by 5%.",
				name = "Joyful Member",
			},
			{
				locked = true,
				name = "Gaining Momentum",
				description = "Increase this units damage dealt by current move speed bonus while in Mech Form.",
			},
		},
		base_range = 2,
	},
	["My Brother!"] = {
		base_attack = 2300,
		rarity = "Mythic",
		exclusive_unit = "Todu",
		passives = {
			{
				description = "If this unit applies a targetted buff to another unit, that unit and all units in its range gains 10% range. (Cannot stack)",
				name = "Moral Support",
			},
			{
				locked = true,
				name = "Funky Tactics",
				description = "Anytime this unit moves locations, buff own damage by 100%.",
			},
		},
		base_range = 2,
	},
	["Gaze of the Strongest"] = {
		base_attack = 2400,
		rarity = "Secret",
		exclusive_unit = "Gujo",
		passives = {
			{
				description = "Anytime this unit is attacking timestopped enemies or enemies on timestop lockout, does 45% more damage.",
				name = "Voided Gaze",
			},
			{
				locked = true,
				name = "The Strongest Eyes",
				description = "Buff damage by 300% and range by 20%.",
			},
			{
				locked = true,
				name = "Information Overload",
				description = "Anytime this unit activates its active, buff all Cosmic allies in range by 80% damage for 60 seconds. (Units affected by this buff have their DoT damage reduced by 90%.)",
			},
		},
		base_range = 2,
	},
    ["Immortal Divine General"] = {
		base_attack = 2400,
		rarity = "Secret",
		exclusive_unit = "Divine General (Adaptation)",
		passives = {
			{
				description = "Deals 10% more damage per Modifier/Mutator on the enemy.",
				name = "The Wheel Turns",
			},
			{
				locked = true,
				name = "Affinity",
				description = "Buffs range by 5% per Mechanic/Mutation/Modifier/Status Effect/Status Debuff this unit is immune to.",
			},
			{
				locked = true,
				name = "Immortal Being",
				description = "This unit does 5% more damage per attack on the same enemy.",
			},
		},
		base_range = 2,
	},
    ["Royal Flush"] = {
		base_attack = 2400,
		rarity = "Secret",
		exclusive_unit = "Reckless Gambler",
		passives = {
			{
				description = "After every attack gain a buff ranging from 0% to 50% Damage and 0% to 40% Crit Rate. (This buff is removed the next attack)",
				name = "Against All Odds",
			},
			{
				locked = true,
				name = "Cursed Gambler",
				description = "While Jackpot is active, this unit can attack anywhere on the map.",
			},
			{
				locked = true,
				name = "I Just Hit A",
				description = "Anytime this unit discards cards they retain their winning set, next hand they discard all 5 cards; While Jackpot is active, the odds of getting same odds/evens cards is increased and Solar/Deadeye are removed.",
			},
		},
		base_range = 2,
	},
    ["By the Book"] = {
		base_attack = 2300,
		rarity = "Mythic",
		exclusive_unit = "Cursed Lawyer",
		passives = {
			{
				description = "While buffing other units, increase their Crit rate by 10%. (Cannot stack, units buffed by this effect cannot Crit with DoT)",
				name = "Tell the Truth",
			},
			{
				locked = true,
				name = "Scales of Justice",
				description = "Gains 10% Crit Damage per stack of Scales.",
			},
		},
		base_range = 2,
	},
    ["Restricted By the Heavens"] = {
		base_attack = 2300,
		rarity = "Exclusive",
		exclusive_unit = "Tuji",
		passives = {
			{
				description = "When attacking, if a shielded enemy is included in the enemys damaged that attack does 50% more damage.",
				name = "Cursed Removal",
			},
			{
				locked = true,
				name = "Methodical Planning",
				description = "Anytime this unit toggles an active, buff own damage by 50% for 60 seconds.",
			},
		},
		base_range = 2,
	},
	--UPDATE 13.5 (ETERNAL ADVERSARIES)--
	["Battle of the Strongest"] = {
		base_attack = 2800,
		rarity = "Strongest",
		exclusive_units = {
			"Today's Strongest vs History's Strongest",
			"Today's Strongest",
			"History's Strongest",
		},
		passives = {
			{
				description = "Buff damage dealt to Timestopped enemies or enemies inflicted with Dismantle by 45%.",
				name = "Wanton Destruction",
			},
			{
				locked = true,
				name = "King of Curses",
				description = "Critical hits from this unit inflict Bleed for 10% of this unit's damage over 8 seconds.",
			},
			{
				locked = true,
				name = "Inheritor of the 6 Eyes",
				description = "When this unit is placed for the first time, buff damage by 150% for 60 seconds.",
			},
		},
		base_range = 2,
	},
    ["One Above All"] = {
		base_attack = 2800,
		rarity = "BlazingSol",
		exclusive_unit = "Iscanur (Pride)",
		passives = {
			{
				description = "Buff this unit's damage by 100%; Reduce this unit's damage by 50% per other unit placed.",
				name = "Lone Fighter",
			},
			{
				locked = true,
				name = "Above All Races",
				description = "For stages with negative status changes, this unit ignores those changes; This unit is treated as any category for stage buffs; This unit ignores Weather Effects.",
			},
			{
				locked = true,
				name = "Unstoppable Pride",
				description = "While at least 5 team slots are burned, this unit retains upgrades across placements after being sold.",
			},
		},
		base_range = 2,
	},
    ["Anger vs Discipline"] = {
		base_attack = 2400,
		rarity = "Secret",
		exclusive_units = {
			"Raging Oni vs Wrath God",
			"Raging Oni",
			"Wrath God",
		},
		passives = {
			{
				description = "Critical hits from this unit generate 5% meter; Buff damage by 30% of this unit's current total meter.",
				name = "Precision Strike",
			},
			{
				locked = true,
				name = "Even Angrier",
				description = "After a Winner is chosen, buff this unit's damage by 100%.",
			},
			{
				locked = true,
				name = "Corruption of the Dark Chi",
				description = "When attacking an enemy inflicted with Corruption, deal 20% more damage.",
			},
		},
		base_range = 2,
	},
    ["Lord of the Fairies"] = {
		base_attack = 2300,
		rarity = "Mythic",
		exclusive_unit = "Lord",
		passives = {
			{
				description = "When this unit stuns an enemy, buff damage by 50% for 10 seconds.",
				name = "Lazy Lord",
			},
			{
				locked = true,
				name = "Remorseful Existence",
				description = "When this unit inflicts Stone on an enemy, follow up with Attack 1 for 200% damage (20-second local cooldown).",
			},
		},
		base_range = 2,
	},
    ["Snip Snip"] = {
		base_attack = 2300,
		rarity = "Mythic",
		exclusive_unit = "Reaper",
		passives = {
			{
				description = "Follow-up attacks deal 50% more damage to Bleeding enemies.",
				name = "Surprise Firearm",
			},
			{
				locked = true,
				name = "Formidable Fighter",
				description = "Whenever this unit detonates Bleed, buff range by 30% for 20 seconds.",
			},
		},
		base_range = 2,
	},
    ["Unlikely Doctor"] = {
		base_attack = 2300,
		rarity = "Mythic",
		exclusive_unit = "Cursed Doctor",
		passives = {
			{
				description = "On placement, gain 2 upgrades (cannot be equipped on Ninjutsu units).",
				name = "Top Tier Support",
			},
			{
				locked = true,
				name = "Bad Habit",
				description = "When a unit is inflicted with a Status Effect or Status Debuff, buff that unit's range by 20% for 20 seconds.",
			},
		},
		base_range = 2,
	},
    ["Messenger of Destruction"] = {
		base_attack = 2300,
		rarity = "Exclusive",
		exclusive_unit = "Envoy of Destruction",
		passives = {
			{
				description = "Damage bypasses 30% of enemy Damage Reduction.",
				name = "Defensive Destruction",
			},
			{
				locked = true,
				name = "33550336",
				description = "Buff damage dealt by this unit's Damage Reduction bypass percentage; After this unit uses an active ability, gain Blazing Sun for 20 seconds; Blazing Sun buffs damage by 50% and Damage Reduction bypass by 80%.",
			},
		},
		base_range = 2,
	},
	--UPDATE 13.0 (GODLY ASCENSION)--
	["Blazing Inferno"] = {
		base_attack = 2400,
		rarity = "Secret",
		passives = {
			{
				description = "Does 30% more damage to enemies inflicted with burn.",
				name = "Fires of Destruction",
		    },
		    {
				description = "When doing a basic attack on an enemy with 10 stacks of burn or more, inflicts Intense Burn for 100% of this units damage.",
				locked = true,
				name = "Concentrated Flames",
			},
		    {
				description = "For every Skeleton alive from South, increases damage by 1%.",
				locked = true,
				name = "Intimidation of a Long Life",
			},
		},
		exclusive_units = {
			"Yomomata (Captain)",
		},
		base_range = 2,
	},
	["He Laughed"] = {
		base_attack = 2800,
		rarity = "CogFive",
		passives = {
			{
				description = "When attacking an enemy on Repulse lockout, deal 35% more damage.",
				name = "Moment of Opportunity",
			},
			{
				locked = true,
				name = "Loveable Captain",
				description = "After this unit uses meter, gain meter 30% faster for 20 seconds; Non-Enhanced skills generate 10% meter per use; Enhanced attacks inflict Rupture.",
			},
			{
				locked = true,
				name = "The Banging Drums",
				description = "When an enemy in range leaves Repulse lockout, inflict Repulse on that enemy.",
			},
		},
		exclusive_units = {
			"Elastic Captain (Cog 5th)",
		},
		base_range = 2,
	},
    Hellfire = {
		base_attack = 2400,
		rarity = "Secret",
		passives = {
			{
				description = "Deal 50% more damage inside Rifts.",
				name = "Bounty Spotted",
			},
			{
				locked = true,
				name = "Finisher",
				description = "Deal 30% more damage to enemies inflicted with Rupture.",
			},
			{
				locked = true,
				name = "3 Swords",
				description = "For every 1% damage buff on this unit, buff Crit Chance by 0.25%.",
			},
		},
		exclusive_units = {
			"Bounty Hunter (King of Hell)",
			"Bounty Hunter",
		},
		base_range = 2,
	},
    ["The Beast King"] = {
		base_attack = 2400,
		rarity = "Secret",
		passives = {
			{
				description = "Buff damage from summons by 40%.",
				name = "Leader of Beasts",
			},
			{
				locked = true,
				name = "Draconic Might",
				description = "The first attack this unit lands on an enemy deals 100% more damage.",
			},
			{
				locked = true,
				name = "Pressure of the Strong",
				description = "Enemies within 30 range of this unit are Slowed by 50%.",
			},
		},
		exclusive_unit = "Beast Pirate (Half-Dragon)",
		base_range = 2,
	},
    ["Scrap Metal Master"] = {
		base_attack = 2300,
		rarity = "Mythic",
		passives = {
			{
				description = "Buff damage from Active abilities, and damage dealt while an Active is active, by 50%.",
				name = "Captain of the Crew",
			},
			{
				locked = true,
				name = "Heavy Metal",
				description = "Damage dealt by this unit's Active abilities inflicts Bleed for 50% of the damage dealt over 8 seconds.",
			},
		},
		exclusive_unit = "Scrap Pirate",
		base_range = 2,
	},
    ["Destroyer of Worlds"] = {
		base_attack = 2300,
		rarity = "Exclusive",
		passives = {
			{
				description = "While an active is on cooldown, buff damage by 40%.",
				name = "God of Destruction",
			},
			{
				locked = true,
				name = "Sleepy God",
				description = "After this unit uses an active, Stun this unit for 10 seconds (bypasses immunities), then buff damage by 100% for 30 seconds.",
			},
		},
		exclusive_unit = "Cat God",
		base_range = 2,
	},
    ["Regretful Past"] = {
		base_attack = 2300,
		rarity = "Exclusive",
		passives = {
			{
				description = "Buff damage by half of the current meter value as a percentage.",
				name = "Angry Man",
			},
			{
				locked = true,
				name = "Flaming Chains",
				description = "Whenever this unit applies Chaos, inflict Burn for 20% of this unit's damage over 8 seconds.",
			},
		},
		exclusive_unit = "Reasonable Person",
		base_range = 2,
	},
	--UPDATE 12.5 (TURNING TIDES)--
	["Goddess of Spring"] = {
		base_attack = 2800,
		rarity = "Goddess",
		passives = {
			{
				description = "Whenever this unit creates a Domain, buff this unit's damage by 50% for the Domain's duration.",
				name = "Founder's Domain",
			},
			{
				locked = true,
				name = "The First Shinobi",
				description = "This unit now has Ninjutsu; When this unit is placed via Ninjutsu, buff damage by 30% for 60 seconds.",
			},
			{
				locked = true,
				name = "Lover of Nature",
				description = "Whenever this unit activates a Domain, buff damage of all Nature element units on the field by 50% for that Domain's duration.",
			},
		},
		exclusive_unit = "Koguro (Unsealed)",
		base_range = 2,
	},
    ["Peak of Shinobi"] = {
		base_attack = 2800,
		rarity = "ShinobiGod",
		passives = {
			{
				description = "Buff this unit's damage by 5% per upgrade gained; Lose 5% of this damage buff per upgrade lost (buff resets if this unit is sold).",
				name = "Shinobi Above All",
			},
			{
				locked = true,
				name = "No Escape",
				description = "Whenever this unit applies a Debuff to an enemy, inflict Burn for 40% of this unit's damage over 8 seconds.",
			},
			{
				locked = true,
				name = "Next Generation",
				description = "When this unit is sold, buff the damage of the next unit placed by 40% for 30 seconds.",
			},
		},
		exclusive_unit = "Shinobi God (Infinite Dreams)",
		base_range = 2,
	},
    ["Deceptive Innocence"] = {
		base_attack = 2400,
		rarity = "Secret",
		passives = {
			{
				description = "When attacking a Time Stopped enemy, deal 30% more damage.",
				name = "Time Stop",
			},
			{
				locked = true,
				name = "Parallel World",
				description = "When attacking an enemy on Repulse lockout, buff damage by 20% for 60 seconds.",
			},
			{
				locked = true,
				name = "Endless Selves",
				description = "When this unit spawns a clone, that clone gains any buffs this unit has.",
			},
		},
		exclusive_unit = "Time Goddess (Crazed)",
		base_range = 2,
	},
    ["All I've Got"] = {
		base_attack = 2400,
		rarity = "Secret",
		passives = {
			{
				description = "When this unit loses any amount of a buff, buff damage by 5% (up to 40%).",
				name = "Perseverance of Hard Work",
			},
			{
				locked = true,
				name = "Burning Youth",
				description = "When this unit applies Burn, cleanse this unit of Status Debuffs.",
			},
			{
				locked = true,
				name = "Teacher of Taijutsu",
				description = "When this unit is sold, buff the damage of the next unit placed by 20% for 30 seconds.",
			},
		},
		exclusive_unit = "Strongest Shinobi",
		base_range = 2,
	},
    ["Master of Toads"] = {
		base_attack = 2300,
		rarity = "Mythic",
		passives = {
			{
				description = "Whenever this unit applies Slow, also apply Nullify.",
				name = "Sage of Toads",
			},
			{
				locked = true,
				name = "Summoning of Toads",
				description = "When this unit is placed via Ninjutsu, buff this unit's damage by 80% for 30 seconds.",
			},
		},
		exclusive_unit = "Toad Shinobi",
		base_range = 2,
	},
    ["Lifeforce Absorption"] = {
		base_attack = 2300,
		rarity = "Mythic",
		passives = {
			{
				description = "Whenever this unit spends meter, refund 30% of the meter spent; If this unit is a Dragon Sphere category unit, increase the refund to 60%.",
				name = "Category Leader",
			},
			{
				locked = true,
				name = "Space Traveling Warrior",
				description = "When this unit buffs another unit, buff this unit by the same amount.",
			},
		},
		exclusive_unit = "Fruit Eater",
		base_range = 2,
	},
    ["Devoted Dedication"] = {
		base_attack = 2300,
		rarity = "Mythic",
		passives = {
			{
				description = "If this unit is a Curse unit, buff this unit's damage by 40%.",
				name = "Undead Army",
			},
			{
				locked = true,
				name = "Lover's Support",
				description = "Buff damage of any unit in range with Affection by 20%.",
			},
		},
		exclusive_unit = "Devoted Demon",
		base_range = 2,
	},
	--UPDATE 12.0 (PAINFUL LESSONS)--
	["Shall Know Pain"] = {
		base_attack = 2400,
		rarity = "Secret",
		passives = {
			{
				description = "Whenever this unit Toggles an Active, increase Damage by 50% for 30 seconds.",
				name = "Deliverance of Pain",
			},
			{
				locked = true,
				name = "Course Correction",
				description = "Anytime this unit places a seperate unit via Active or Ninjutsu, buff that unit's damage by 20% for 30 seconds.",
			},
			{
				locked = true,
				name = "Teacher of Tragedy",
				description = "Whenever a unit is Sold or Deleted in this units range, buff this unit's Damage by 20% for 30 seconds.",
			},
		},
		exclusive_unit = "Agony Shinobi",
		base_range = 2,
	},
    ["Trust of Others"] = {
		base_attack = 2400,
		rarity = "Secret",
		passives = {
			{
				description = "Whenever this unit enters via Ninjutsu, buff damage by 50% for 30 seconds.",
				name = "Power of Friendship",
			},
			{
				locked = true,
				name = "Taught by Nature",
				description = "Buffs all Nature category allies in range by 30% Damage.",
			},
			{
				locked = true,
				name = "Forbidden Technique",
				description = "Anytime a clone of this unit despawns, increase this unit's Damage by 30% for 30 seconds.",
			},
		},
		exclusive_unit = "Shinobi Sage",
		base_range = 2,
	},
    ["Revenge of the Cursed One"] = {
		base_attack = 2300,
		rarity = "Mythic",
		passives = {
			{
				description = "When this unit applies a DoT on an enemy for the first time, that DoT does 50% more damage.",
				name = "Black Flames",
			},
			{
				locked = true,
				name = "Hunter of Revenge",
				description = "Whenever an enemy that was inflicted by Black Flames in this unit's range dies, this unit does a follow up attack. (2 second cooldown)",
			},
		},
		exclusive_unit = "Cursed Shinobi",
		base_range = 2,
	},
    ["A Father's Sacrifice"] = {
		base_attack = 2300,
		rarity = "Mythic",
		passives = {
			{
				description = "Anytime this unit moves locations, buff Damage by 30% for 30 seconds.",
				name = "The Teleporting Shinobi",
			},
			{
				locked = true,
				name = "A Father's Duty",
				description = "Anytime this unit does Attack 4, does 50% more damage.",
			},
		},
		exclusive_unit = "Fastest Shinobi",
		base_range = 2,
	},
    ["Sinful Priest"] = {
		base_attack = 2300,
		rarity = "Exclusive",
		passives = {
			{
				description = "For every enemy hit increases next attacks damage by 5%. (Up to 35%, Resets every attack)",
				name = "Large Cannon",
			},
			{
				locked = true,
				name = "Seeker of Paradise",
				description = "For every enemy in range increase damage by 5%. (Up to 100%)",
			},
		},
		exclusive_unit = "Preacher",
		base_range = 2,
	},
    ["Purveyor of Peace"] = {
		base_attack = 2300,
		rarity = "Exclusive",
		passives = {
			{
				description = "Anytime this unit becomes stunned, increase Damage by 40% for 60 seconds.",
				name = "Intense Battle",
			},
			{
				locked = true,
				name = "Deadeye",
				description = "This unit gains 40% Critical Chance and 50% Critical Damage.",
			},
		},
		exclusive_unit = "Fallen Angel",
		base_range = 2,
	},
	--UPDATE 11.5 (MOONLESS SKY)--
	["Bond of Master and Disciple"] = {
		base_attack = 2400,
		max_attack = "9.47K",
		range = "2",
		rarity = "Secret",
		passives = {
			{
				description = "Increases Critical Damage by 30%.",
				name = "Vital Strike",
			},
			{
				locked = true,
				name = "Tough Teaching",
				description = "Whenever this unit Crits, cleanse self of all Debuffs.",
			},
			{
				locked = true,
				name = "Trial By Fire",
				description = "Whenever this unit does a Follow Up, Increases Crit Chance of self by 30% for 20 seconds.",
			},
		},
		exclusive_unit = "Teacher (Final Stand)",
		base_range = 2,
	},
	["The True Savior"] = {
		base_attack = 2800,
		max_attack = "11.04K",
		range = "2",
		rarity = "Savior",
		passives = {
			{
				description = "Anytime this unit does follow up, buff damage by 30% for 20 seconds. (Non Stacking)",
				name = "Living Out Your Fantasy",
			},
			{
				locked = true,
				name = "The Brightest Star",
				description = "Whenever this unit removes a buff from self, buff self by 50% for 20 seconds. (Non Stacking)",
			},
			{
				locked = true,
				name = "For All to See",
				description = "Whenever this unit does an attack that is different than the previous one, buff self by 10% for 20 seconds. (Non Stacking)",
			},
		},
		exclusive_unit = "Savior (Moonless)",
		base_range = 2,
	},
	["Ultimate Deceiver"] = {
		base_attack = 2400,
		max_attack = "9.47K",
		range = "2",
		rarity = "Secret",
		passives = {
			{
				description = "When attacking a slowed enemy does 30% more damage.",
				name = "Opportune Attack",
			},
			{
				locked = true,
				name = "Immortal Monster",
				description = "When this units Revival is triggered increases damage by 50%.",
			},
			{
				locked = true,
				name = "Illusionary Being",
				description = "Reflects Status Effects back to enemies.",
			},
		},
		exclusive_unit = "Deceiver",
		base_range = 2,
	},
    ["Death, Resurrected"] = {
		base_attack = 2400,
		max_attack = "9.47K",
		range = "2",
		rarity = "Secret",
		passives = {
			{
				description = "When this unit is placed, buffs damage by 50% for 60 seconds.",
				name = "Resurrection Evolved",
			},
			{
				locked = true,
				name = "Long Ranged Throw",
				description = "When attacking an enemy further than 60% of this units range, inflicts slow for 30% for 10 seconds.",
			},
			{
				locked = true,
				name = "Devastating Power",
				description = "Any buff to this units range also buffs his damage.",
			},
		},
		exclusive_unit = "Diablo",
		base_range = 2,
	},
	--UPDATE 11.0 (DEMONIC RAMPAGE)--
	["Enthusiastic Walks"] = {
		base_attack = 2800,
		max_attack = "11.04K",
		range = "2",
		rarity = "Enthusiastic",
		passives = {
			{
				description = "Deals 30% more damage when attacking a Bleeding enemy.",
				name = "Vampiric Chaser",
			},
			{
				locked = true,
				name = "Bloody Shower",
				description = " All enemies in this units range are inflicted with Bleed for 5% damage over 6 seconds, every second.",
			},
			{
				locked = true,
				name = "King of the Vampires",
				description = "Increases damage by 5% for every summon of this unit on the track. (Up to 100%)",
			},
		},
		exclusive_unit = "Alocard",
		base_range = 2,
	},
	["Shackled Sight"] = {
		base_attack = 2400,
		max_attack = "9.47K",
		range = "2",
		rarity = "Secret",
		passives = {
			{
				description = "Attacks apply Bleed for 5% of this units damage for 8 seconds.",
				name = "Bleeding Devotion",
			},
			{
				locked = true,
				name = "Control Freak",
				description = "Anytime a Demon Hunter ally is chained, increases damage by 10%; When this buff reaches 50%, buff all chained allies by 30% damage.",
			},
			{
				locked = true,
				name = "Dangerous Love",
				description = "When Demon Hybrid is in this units range that unit gains 40% damage.",
			},
		},
		exclusive_unit = "Demon Leader",
		base_range = 2,
	},
	["Perpetual Motion"] = {
		base_attack = 2400,
		max_attack = "9.47K",
		range = "2",
		rarity = "Secret",
		passives = {
			{
				description = "When performing a follow up, do 30% more damage.",
				name = "Going Wild",e
			},
			{
				locked = true,
				name = "I Can Keep Going",
				description = "Whenever this unit loses meter gain a buff equal to the meter lost (Up to 100%, this buff is lost when this unit hits 0 meter.)",
			},
			{
				locked = true,
				name = "The First to Fight",
				description = "Anytime this unit removes a Bleed via Rookie Demon Hunter, that Bleed is then reapplied for 20% of its original value for 8 seconds. (Occurs once per Bleed)",
			},
		},
		exclusive_unit = "Demon Hybrid",
		base_range = 2,
	},
	["Along Came a Spider"] = {
		base_attack = 2300,
		max_attack = "9.07K",
		range = "2",
		rarity = "Exclusive",
		passives = {
			{
				description = "When a DoT is applied in this units range, increase damage by 5%. (Up to 30%)",
				name = "Elegant Violence",
			},
			{
				locked = true,
				name = "Ruination",
				description = "When this unit attacks a Bleeding enemy, inflict Slow for 30% for 10 seconds.",
			},
		},
		exclusive_unit = "Manipulator",
		base_range = 2,
	},
	["Empty Reflections"] = {
		base_attack = 2300,
		max_attack = "9.07K",
		range = "2",
		rarity = "Exclusive",
		passives = {
			{
				description = "Increases Cosmic damage by 30%.",
				name = "Emptiness Becoming",
			},
			{
				locked = true,
				name = "Wilting Aggression",
				description = "Whenever this unit uses its active, increases damage by 50% for 20 seconds.",
			},
		},
		exclusive_unit = "Arbiter",
		base_range = 2,
	},
	["Late Night Shift"] = {
		base_attack = 2300,
		max_attack = "9.07K",
		range = "2",
		rarity = "Mythic",
		passives = {
			{
				description = "Anytime this unit Slows an enemy, deal an instance of damage equal to 50% of this units damage.",
				name = "Expiration of Life",
			},
			{
				locked = true,
				name = "Demonic Contractor",
				description = "When placed is given the option to buff own damage by 50% but increase cost by 30%.",
			},
		},
		exclusive_unit = "Demon Hunter",
		base_range = 2,
	},
	["Drops of Serenity"] = {
		base_attack = 2300,
		max_attack = "9.07K",
		range = "2",
		rarity = "Mythic",
		passives = {
			{
				description = "When attacking a Primed enemy deal 30% more damage",
				name = "Foreign Training",
			},
			{
				locked = true,
				name = "Shockwave",
				description = "Anytime a Primed enemy is detonated, Repulse all enemies hit by the explosion.",
			},
		},
		exclusive_unit = "Explosive Demon",
		base_range = 2,
	},

	["POWAHH!!!"] = {
		base_attack = 2300,
		max_attack = "9.07K",
		range = "2",
		rarity = "Mythic",
		passives = {
			{
				description = "When this unit applies Bleed, buff damage by 30% for 10 seconds.",
				name = "Coagulation",
			},
			{
				locked = true,
				name = "Chaotic Delusions",
				description = "Anytime a Bleed is applied in range, gain 5% meter.",
			},
		},
		exclusive_unit = "Delusional Demon",
		base_range = 2,
	},

	["Golden Obsessions"] = {
		base_attack = 2300,
		max_attack = "9.07K",
		range = "2",
		rarity = "Mythic",
		passives = {
			{
				description = "Increases Yen gain by 20%.",
				name = "All That Glitters",
			},
			{
				locked = true,
				name = "Treasure Hunter",
				description = "Every Chest obtained increases the amount of yen the next chest gives by 10%. (Player Specific and Stacking)",
			},
		},
		exclusive_unit = "Tempest Pirate",
		base_range = 2,
	},
	--UPDATE 10.5 (FROZEN SALVATION)--
	["Frozen Admiral"] = {
		base_attack = 2300,
		max_attack = "9.07K",
		range = "2",
		rarity = "Mythic",
		passives = {
			{
				description = "When attacking an enemy inflicted with Wanted, increases damage dealt by 30%.",
				name = "Pirate Hunter",
			},
			{
				locked = true,
				name = "Admiral of Ice",
				description = "When attacking an enemy inflicted with Wanted, follows up with Attack 2 for 30% of this units damage. (5 second cooldown)",
			},
		},
		exclusive_unit = "Ice Manipulator",
		base_range = 2,
	},
	["Water Goddess's Cheer"] = {
		base_attack = 600,
		max_attack = "1.42K",
		range = "0.6",
		rarity = "Epic",
		passives = {
			{
				description = "Increases Damage by 2% per wave. (Up to 30%)",
				name = "Wave Power",
			},
		},
		base_range = 1,
	},
	["Power Surge"] = {
		base_attack = 1200,
		max_attack = "2.84K",
		range = "0.6",
		rarity = "Legendary",
		passives = {
			{
				description = "Increases Damage by 20%.",
				name = "Power Surge",
			},
		},
		base_range = 1,
	},
	["Artist's Blessing"] = {
		base_attack = 1200,
		max_attack = "2.84K",
		range = "0.6",
		rarity = "Legendary",
		passives = {
			{
				description = "Increases Seasonal Event Currency Earned by 5%.",
				name = "Event Currency Boost",
			},
		},
		base_range = 1,
	},
	["Gambling Fanatic"] = {
		base_attack = 1200,
		max_attack = "2.84K",
		range = "0.6",
		rarity = "Legendary",
		exclusive_unit = "Takaroda",
		passives = {
			{
				locked = true,
				name = "Hardcore Gambler",
				description = "Upgrades decrease cost by 5%. (Stacking)",
			},
		},
		base_range = 1,
	},
	["Ice Queen's Rest"] = {
		base_attack = 2600,
		max_attack = "10.25K",
		range = "2",
		rarity = "IceQueen",
		passives = {
			{
				description = "Anytime Absolute Zero is Triggered in this units range, it is immediately re-applied. (10 second cooldown.)",
				name = "Queen of Ice",
			},
			{
				locked = true,
				name = "Full Power Assist",
				description = "Anytime this unit attacks via Unyielding Support, it now pulls its damage stat from the upgrade respective to the unit that it is assisting; Reduces the damage bonus from Frozen Cancellation by 20% x the assisted units upgrade level.",
			},
			{
				locked = true,
				name = "Being of Ice",
				description = "Immune to Status Effects and Status Debuffs; Anytime a Status Effect is resisted, Freeze all enemies in range for 2 seconds.",
			},
		},
		exclusive_unit = "Ice Queen (Release)",
		base_range = 2,
	},
	["Armored Mage's Day Off"] = {
		base_attack = 2300,
		max_attack = "9.07K",
		range = "2",
		rarity = "Secret",
		passives = {
			{
				description = "DoTs applied by this unit now bypass shields.",
				name = "Unstoppable Pressure",
			},
			{
				locked = true,
				name = "Requipping Goddess",
				description = "Anytime this unit spends meter, refunds 30% of the meter spent.",
			},
			{
				locked = true,
				name = "Teamplayer",
				description = "Whenever this units buff expire on an ally, that buff is reapplied for the same duration.",
			},
		},
		exclusive_unit = "Armored Mage",
		base_range = 2,
	},
	["Tough Bunny"] = {
		base_attack = 2300,
		max_attack = "9.07K",
		range = "2",
		rarity = "Mythic",
		passives = {
			{
				description = "Stun duration on this unit is halved.",
				name = "Brawler",
			},
			{
				locked = true,
				name = "Prey Becomes Predator",
				description = "Whenever this unit follows up with Attack 3, move this unit to the nearest available position next to the track.",
			},
		},
		exclusive_unit = "Rabbit Hero",
		base_range = 2,
	},
	["Range Boost I"] = {
		base_attack = 100,
		rarity = "Rare",
		passives = {
			{
				description = "Buffs Range by 5%.",
				name = "Range Boost",
			},
		},
		base_range = 1,
	},
	["DoT Amplifier"] = {
		base_attack = 600,
		max_attack = "1.42K",
		range = "0.6",
		rarity = "Epic",
		passives = {
			{
				description = "Increases DoT damage by 30%.",
				name = "DoT Amplifier",
			},
		},
		base_range = 1,
	},
	["Speed Boost I"] = {
		base_attack = 100,
		rarity = "Rare",
		passives = {
			{
				description = "Decreases SPA by 5%.",
				name = "Speed Boost",
			},
		},
		base_range = 1,
	},
	["Young Entrepreneur"] = {
		base_attack = 600,
		max_attack = "1.42K",
		range = "0.6",
		rarity = "Epic",
		exclusive_unit = "Sprintwagon",
		passives = {
			{
				description = "(Sprintwagon Exclusive) Increases Yen gain by 100%; Every placed placement of Sprintwagon reduces this amount by 50% excluding the first.",
				name = "Yen Mastery",
			},
		},
		base_range = 1,
	},
	["Company Captain's Presence"] = {
		base_attack = 2300,
		max_attack = "9.07K",
		range = "2",
		rarity = "Secret",
		passives = {
			{
				description = "Increases damage by 30% when attacking an enemy inflicted with Burn.",
				name = "Fire's Warmth",
			},
			{
				locked = true,
				name = "Second Generation",
				description = "Anytime this unit attacks an enemy inflicted with Conflagration, Slow that enemy by 40% for 20 seconds.",
			},
			{
				locked = true,
				name = "Third Generation",
				description = "When an enemy inflicted with Conflagration dies, fires a broom at that location. (5 Second Cooldown)",
			},
		},
		exclusive_unit = "Company Captain (Hybrid)",
		base_range = 2,
	},
	["King of the Trash"] = {
		base_attack = 2300,
		max_attack = "9.07K",
		range = "2",
		rarity = "Mythic",
		passives = {
			{
				description = "Gains 10% Crit Chance; Anytime a status effect or debuff would apply to this unit, ignores that application and becomes immune to both for 5 seconds. (40 Second cooldown)",
				name = "Expert Skill",
			},
			{
				locked = true,
				name = "Loot Goblin",
				description = "Gains 20% more yen when killing an enemy, this number becomes 40% after the ability Skill Garden is first used.",
			},
		},
		exclusive_unit = "Trash Gamer",
		base_range = 2,
	},
	["Damage Boost I"] = {
		base_attack = 100,
		rarity = "Rare",
		passives = {
			{
				description = "Buffs Damage by 10%.",
				name = "Damage Boost",
			},
		},
		base_range = 1,
	},
}

return data