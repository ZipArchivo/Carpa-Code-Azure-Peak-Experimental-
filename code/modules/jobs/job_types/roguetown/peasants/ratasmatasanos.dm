/datum/job/roguetown/ratasmatasanos
	title = "Matasanos de Cloaca"
	flag = VILLAGER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	display_order = JDO_RATASMATASANOS
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS

	tutorial = "Tanto esfuerzo, tanta pasión, y todo para que ese médico de la corte diga que soy un 'INEPTO'. ¿Qué coño sabrá él? La medicina es un arte que estos idiotas no comprenden... Después de que me echaran de la clínica, me surgió una lucrativa oportunidad trabajando para los Ratas de Cloaca. Ahora son sangre de mi sangre."


	f_title = "Ratasmatasanos"
	outfit = /datum/outfit/job/roguetown/ratasmatasanos
	display_order = 29.1
	min_pq = 3
	max_pq = null
	round_contrib_points = 3
	cmode_music = 'sound/music/combat_ratasmatasanos.ogg'

/datum/outfit/job/roguetown/ratasmatasanos/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/stealing, 2, TRUE)
	H.mind.AddSpell(new /obj/effect/proc_holder/spell/invoked/diagnose/secular)
	head = /obj/item/clothing/head/roguetown/bucklehat
	belt = /obj/item/storage/belt/rogue/leather/black
	cloak = /obj/item/clothing/cloak/apron/blacksmith
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/vagrant
	pants = /obj/item/clothing/under/roguetown/trou
	shoes = /obj/item/clothing/shoes/roguetown/simpleshoes/buckle
	backr = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(
		/obj/item/reagent_containers/glass/bottle/waterskin = 1,
		/obj/item/rogueweapon/shovel/small = 1
		)
	gloves = /obj/item/clothing/gloves/roguetown/leather
	beltr = /obj/item/rogueweapon/surgery/scalpel
	beltl = /obj/item/roguekey/ratashq
	mask = /obj/item/clothing/mask/rogue/ragmask
	armor = /obj/item/clothing/suit/roguetown/armor/gambeson/heavy/pontifex
	H.change_stat("strength", 1)
	H.change_stat("speed", 1)
	H.change_stat("intelligence", 3)
	H.change_stat("perception", 2)
	ADD_TRAIT(H, TRAIT_RATAS, type)
	ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_EMPATH, "[type]")
	ADD_TRAIT(H, TRAIT_NOSTINK, "[type]")