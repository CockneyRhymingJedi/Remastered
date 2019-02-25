lost_aqualish_warchief = Creature:new {
	objectName = "@mob/creature_names:lost_aqualish_warchief",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lost_aqualish",
	faction = "lost_aqualish",
	level = 295,
	chanceHit = 27.25,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 26654,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 2,
	resists = {200,25,25,200,200,200,200,200,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_lost_aqualish_warchief_female_01.iff",
		"object/mobile/dressed_lost_aqualish_warchief_male_01.iff"},
        scale = 1.35,
	lootGroups = {
		{
			groups = {
				{group = "nyms_common", chance = 2500000},
				{group = "nightsister_common", chance = 1000000},
				{group = "theme_park_reward_imperial_kaja", chance = 1000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "power_crystals", chance = 3500000}
			},
			lootChance = 5000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(lost_aqualish_warchief, "lost_aqualish_warchief")
