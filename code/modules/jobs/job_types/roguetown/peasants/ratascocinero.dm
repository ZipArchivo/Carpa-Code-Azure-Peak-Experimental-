/datum/job/roguetown/ratascocinero
	title = "Cocinero de Cloaca"
	flag = VILLAGER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	display_order = JDO_RATASCOCINERO
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS

	tutorial = "Cuando ya te asentaste en El Den junto a lo que quedaba de tu tripulacion, encontrasteis un bar abandonado con un letro que decia 'Lefty's', ahi es donde das de comer a tu tripulacion, y a cualquier desgraciado que no pueda permitirse comer en la taberna del pueblo."


	f_title = "Ratascocinero"
	outfit = /datum/outfit/job/roguetown/ratascocinero
	display_order = 29.2
	min_pq = 3
	max_pq = null
	round_contrib_points = 3
	cmode_music = 'sound/music/combat_ratascocinero.ogg'

/datum/outfit/job/roguetown/ratascocinero/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/cooking, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/labor/butchering, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/labor/fishing, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/music, 2, TRUE)
	belt = /obj/item/storage/belt/rogue/leather/black
	cloak = /obj/item/clothing/cloak/apron/cook
	head = /obj/item/clothing/head/roguetown/headband
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/sailor/red
	pants = /obj/item/clothing/under/roguetown/trou
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	backr = /obj/item/storage/backpack/rogue/satchel
	beltr = /obj/item/rogueweapon/huntingknife/chefknife
	beltl = /obj/item/roguekey/ratashq
	H.change_stat("strength", 2)
	H.change_stat("intelligence", -2)
	H.change_stat("constitution", 1)
	H.change_stat("speed", -3)
	H.dna.species.soundpack_m = new /datum/voicepack/male/warrior()
	H.verbs |= /mob/living/carbon/human/proc/torture_victim
	ADD_TRAIT(H, TRAIT_RATAS, type)
	ADD_TRAIT(H, TRAIT_NUTCRACKER, type)
	ADD_TRAIT(H, TRAIT_NOSEGRAB, type)
