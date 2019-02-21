lost_aqualish_captain = Creature:new {
	objectName = "@mob/creature_names:lost_aqualish_captain",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "lost_aqualish",
	faction = "lost_aqualish",
        level = 135,
	chanceHit = 0.75,
	damageMin = 555,
	damageMax = 820,
	baseXp = 7761,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {30,30,30,100,100,100,100,100,-1},
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
		"object/mobile/dressed_lost_aqualish_captain_female_01.iff",
		"object/mobile/dressed_lost_aqualish_captain_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 2500000},
				{group = "color_crystals", chance = 3500000},
				{group = "nightsister_common", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "wearables_common", chance = 1000000},
				{group = "jabba_theme_park_ephant_mon", chance = 500000}
			},
			lootChance = 2500000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(lost_aqualish_captain, "lost_aqualish_captain")
