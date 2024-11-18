/datum/job/roguetown/serpientes
	title = "Serpiente De Cloaca"
	flag = VILLAGER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	display_order = JDO_SERPIENTE
	selection_color = JCOLOR_PEASANT
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS

	tutorial = "Las Serpientes De Cloaca al poder! Tu y tus colegas habéis descubierto que la violencia, extorsion y el hurto pueden ser cuanto menos lucrativos. Lo único que os separa de los bandidos son los túneles sobre vuestra cabeza, y los impuestos que pagáis. Asegúrate de que siga siendo así, los bandidos suelen ser decapitados! Búscate el pan donde la gente necesite a un subnormal endogámico que tenga pinta de chungo."


	f_title = "Serpiente"
	outfit = /datum/outfit/job/roguetown/serpientes
	display_order = 29
	min_pq = 3
	max_pq = null
	round_contrib_points = 3
	cmode_music = 'sound/music/combat_serpientes.ogg'

/datum/outfit/job/roguetown/serpientes/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 3, TRUE)
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
	beltl = /obj/item/roguekey/serpienteshq
	H.change_stat("strength", 2)
	H.change_stat("intelligence", -2)
	H.change_stat("speed", -1)
	ADD_TRAIT(H, TRAIT_SERPIENTES, type)
	ADD_TRAIT(H, TRAIT_SEEPRICES_SHITTY, type)
	ADD_TRAIT(H, TRAIT_NUTCRACKER, type)
	ADD_TRAIT(H, TRAIT_NOSEGRAB, type)
