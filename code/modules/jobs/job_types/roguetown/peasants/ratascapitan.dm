/datum/job/roguetown/ratascapitan
	title = "Capitan de Cloaca"
	flag = VILLAGER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	display_order = JDO_RATASCAPITAN
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS

	tutorial = "No recuerdas mucho de esa fatídica noche... Solo cómo las llamas consumían furiosamente la estructura del barco, el ruido ensordecedor de los cañones y los gritos apabullantes de tus camaradas ahogandose en la mar. Podrías haberte quedado en el barco ayudando a tu tripulación, pero decidiste huir en una de las barcas de emergencia junto al cocinero y tu contramaestre... Siempre serás recordado como un cobarde, quien ahora solo encuentra cobijo en las cloacas de la ciudad de Azure."


	f_title = "Ratascapitan"
	outfit = /datum/outfit/job/roguetown/ratascapitan
	display_order = 29
	min_pq = 3
	max_pq = null
	round_contrib_points = 3
	cmode_music = 'sound/music/combat_ratascapitan.ogg'

/datum/outfit/job/roguetown/ratascapitan/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/stealing, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/lockpicking, 1, TRUE)
	head = /obj/item/clothing/head/roguetown/helmet/tricorn/skull
	belt = /obj/item/storage/belt/rogue/leather/black
	shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/sailor
	pants = /obj/item/clothing/under/roguetown/tights/sailor
	shoes = /obj/item/clothing/shoes/roguetown/nobleboot
	backr = /obj/item/storage/backpack/rogue/satchel
	armor = /obj/item/clothing/suit/roguetown/shirt/tunic/red
	cloak = /obj/item/clothing/suit/roguetown/armor/longcoat
	beltr = /obj/item/rogueweapon/sword/sabre
	beltl = /obj/item/roguekey/ratashq
	mask = /obj/item/clothing/mask/rogue/eyepatch/left
	id = /obj/item/clothing/ring/silver
	H.change_stat("strength", 1)
	H.change_stat("intelligence", 1)
	H.change_stat("speed", 2)
	ADD_TRAIT(H, TRAIT_RATAS, type)
