rev_sentinel_bunker = Creature:new {
	customName = "Lok Revenant Sentinel",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rev",
	level = 103,
	chanceHit = 0.8,
	damageMin = 545,
	damageMax = 800,
	baseXp = 8408,
	baseHAM = 21000,
	baseHAMmax = 26000,
	armor = 1,
	resists = {35,35,35,200,200,200,200,200,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_nym_destroyer_rod_m.iff",
		"object/mobile/dressed_nym_destroyer_hum_m.iff",
		"object/mobile/dressed_nym_destroyer_nikto_m.iff",
		"object/mobile/dressed_nym_destroyer_wee_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "wearables_uncommon", chance = 2000000},
				{group = "nyms_common", chance = 1000000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "tailor_components", chance = 500000},
				{group = "tkCommon2", chance = 500000},
			},
			lootChance = 4500000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(fencermid,swordsmanmid,tkamid,pikemanmaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(rev_sentinel_bunker, "rev_sentinel_bunker")
