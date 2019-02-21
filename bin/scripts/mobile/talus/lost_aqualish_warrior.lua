lost_aqualish_warrior = Creature:new {
	objectName = "@mob/creature_names:lost_aqualish_warrior",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lost_aqualish",
	faction = "lost_aqualish",
	level = 155,
	chanceHit = 0.85,
	damageMin = 595,
	damageMax = 900,
	baseXp = 9150,
	baseHAM = 20000,
	baseHAMmax = 25000,
	armor = 1,
	resists = {40,200,40,200,200,200,200,200,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_lost_aqualish_warrior_female_01.iff",
		"object/mobile/dressed_lost_aqualish_warrior_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 500000},
				{group = "theme_park_reward_rebel_jan_dodonna", chance = 500000},
				{group = "nightsister_common", chance = 1000000},
				{group = "armor_attachments", chance = 250000},
				{group = "clothing_attachments", chance = 250000},
				{group = "melee_weapons", chance = 2500000},
				{group = "rifles", chance = 1500000},
				{group = "pistols", chance = 1500000},
				{group = "carbines", chance = 1000000},
				{group = "theme_park_reward_rebel_nien_nunb", chance = 500000},
				{group = "tailor_components", chance = 500000}
			}
		}
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(lost_aqualish_warrior, "lost_aqualish_warrior")
