criminal_quest_zekka2 = Creature:new {
	objectName = "@mob/creature_names:criminal",
	socialGroup = "thug",
	faction = "thug",
	level = 7,
	chanceHit = 0.26,
	damageMin = 55,
	damageMax = 65,
	baseXp = 187,
	baseHAM = 270,
	baseHAMmax = 330,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_criminal_assassin_human_male_01.iff",
		"object/mobile/dressed_criminal_organized_human_male_01.iff",
		"object/mobile/dressed_criminal_pirate_human_male_01.iff",
		"object/mobile/dressed_criminal_smuggler_human_male_01.iff",
	},
	lootGroups = {},
	weapons = {"ranged_weapons"},
	attacks = merge(brawlermaster, marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(criminal_quest_zekka2, "criminal_quest_zekka2")
