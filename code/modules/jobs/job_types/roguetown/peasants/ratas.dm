/datum/job/roguetown/ratas
	title = "Contramaestre de Cloaca"
	flag = VILLAGER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	display_order = JDO_RATAS
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS

	tutorial = "Tras escapar de vuestro barco como la panda de cobardes que sois, no sabíais muy bien qué hacer a continuación... Hasta que disteis con El Den, una zona abandonada dentro de las alcantarillas de la ciudad de Azure. Solía ser parte de las instalaciones, pero la droga, la pobreza y la escoria se apoderaron del sitio. Desde ese mismo momento, supisteis que ese sería vuestro nuevo hogar."


	f_title = "Ratas"
	outfit = /datum/outfit/job/roguetown/ratas
	display_order = 29.1
	min_pq = 3
	max_pq = null
	round_contrib_points = 3
	cmode_music = 'sound/music/combat_serpientes2.ogg'

/datum/outfit/job/roguetown/ratas/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/stealing, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/lockpicking, 4, TRUE)
	belt = /obj/item/storage/belt/rogue/leather/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/sailor/red
	pants = /obj/item/clothing/under/roguetown/tights/black
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	backr = /obj/item/storage/backpack/rogue/satchel
	gloves = /obj/item/clothing/gloves/roguetown/fingerless
	armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/sailor/nightman
	beltr = /obj/item/rogueweapon/huntingknife/idagger/navaja // It claims to be a weapon for brigands but bandits don't actually use them...
	beltl = /obj/item/roguekey/ratashq
	H.change_stat("strength", 2)
	H.change_stat("intelligence", -2)
	H.change_stat("speed", -1)
	ADD_TRAIT(H, TRAIT_RATAS, type)
	ADD_TRAIT(H, TRAIT_SEEPRICES_SHITTY, type)