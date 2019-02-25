varactyl_be = Creature:new {
	objectName = "@mob/creature_names:bio_engineered_varactyl",
	socialGroup = "varactyl",
	faction = "",
	level = 5,
	chanceHit = 0.80,
	damageMin = 55,
	damageMax = 75,
	baseXp = 65,
	baseHAM = 100,
	baseHAMmax = 150,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,0},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/varactyl.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=75"},
		{"creatureareacombo","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl_be, "varactyl_be")
