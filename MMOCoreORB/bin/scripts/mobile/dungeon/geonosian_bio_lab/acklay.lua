acklay = Creature:new {
	objectName = "@mob/creature_names:geonosian_acklay_bunker_boss",
	customName = "Acklay",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 157,
	chanceHit = 92.5,
	damageMin = 935,
	damageMax = 1580,
	baseXp = 14884,
	baseHAM = 96000,
	baseHAMmax = 118000,
	armor = 2,
	resists = {130,145,155,155,145,30,30,30,-1},
	meatType = "meat_carnivore",
	meatAmount = 50,
	hideType = "hide_bristley",
	hideAmount = 50,
	boneType = "bone_mammal",
	boneAmount = 50,
	milk = 0,
	tamingChance = 0,
	ferocity = 25,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/acklay_hue.iff"},
	lootGroups = {
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "acklay_bone_elite", chance = 7500000},
				{group = "be_pet_schems", chance = 2500000},
			},
			lootChance = 4000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=75"},
		{"creatureareacombo","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(acklay, "acklay")
