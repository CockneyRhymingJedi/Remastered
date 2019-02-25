rev_spellweaver_bunker = Creature:new {
	customName = "Lok Revenant Spellweaver",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rev",
	level = 107,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 10174,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 2,
	resists = {5,100,5,100,100,100,100,100,-1},
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

	templates = {"object/mobile/dressed_nym_guard_elite_rod_m.iff",
		"object/mobile/dressed_nym_guard_elite_nikto_m.iff",
		"object/mobile/dressed_nym_guard_elite_hum_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5500000},
				{group = "nyms_common", chance = 1000000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "tailor_components", chance = 500000},
				{group = "tkCommon3", chance = 500000},
			},
			lootChance = 5500000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(fencermid,swordsmanmid,pikemanmaster,tkamaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(rev_spellweaver_bunker, "rev_spellweaver_bunker")
