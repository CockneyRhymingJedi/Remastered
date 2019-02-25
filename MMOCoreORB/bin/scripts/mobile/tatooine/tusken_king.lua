tusken_king = Creature:new {
	objectName = "@mob/creature_names:tusken_king",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 150,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9522,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 2,
	resists = {45,35,5,80,-1,50,5,5,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tusken_common", chance = 3000000},
				{group = "wearables_all", chance = 2000000},
				{group = "bone_armor", chance = 1500000},
				{group = "chitin_armor", chance = 750000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "jabba_theme_park_reelo", chance = 1000000},
				{group = "power_crystals", chance = 750000}
			},
			lootChance = 7500000
		}
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_king, "tusken_king")
