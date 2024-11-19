/datum/advclass/pirate
	name = "Pirata"
	tutorial = "El constante tambaleo de las olas perpetuas del mar es su más fiel acompañante. El sabor del vino saqueado deja su rastro en sus lenguas, \
	Mientras como su embarcación en el vaivén de las aguas, entonan canciones de libertad y botines. Los piratas, ruines de palabra y temidos en los mares de Psydonia, \
	Son hábiles combatientes, curtidos por el profundo océano que ha marcado cada instante de sus vidas, \
	Amantes de una libertad distante, buscan en la brisa del mar salado el eco de aquello que anhelan encontrar."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/adventurer/pirate
	traits_applied = list(TRAIT_DODGEEXPERT)
	cmode_music = 'sound/music/combat_pirate.ogg'
	category_tags = list(CTAG_ADVENTURER)

/datum/outfit/job/roguetown/adventurer/pirate
	allowed_patrons = list(/datum/patron/divine/abyssor, /datum/patron/inhumen/matthios)


/datum/outfit/job/roguetown/adventurer/pirate/pre_equip(mob/living/carbon/human/H)
	..()
	H.adjust_blindness(-3)
	var/classes = list("Corsario","Grumete") //Cualquier duda es todo a Umo.
	var/classchoice = input("Choose your archetypes", "Available archetypes") as anything in classes
	
	switch(classchoice)

		if("Corsario")
			H.set_blindness(0)
			to_chat(H, span_warning("Marinero o pirata, al final sobreviviste el mar ajeno de Abyssor portando una espada"))
			head = /obj/item/clothing/head/roguetown/helmet/tricorn
			shoes = /obj/item/clothing/shoes/roguetown/boots/leather
			neck = /obj/item/storage/belt/rogue/pouch/coins/poor
			pants = /obj/item/clothing/under/roguetown/trou/leather
			shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/sailor
			gloves = /obj/item/clothing/gloves/roguetown/leather
			wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
			belt = /obj/item/storage/belt/rogue/leather
			armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/sailor
			backl = /obj/item/storage/backpack/rogue/satchel
			beltr = /obj/item/rogueweapon/sword/cutlass
			beltl = /obj/item/rogueweapon/huntingknife/idagger/steel
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE) 
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE) 
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/labor/fishing, 3, TRUE)
			H.change_stat("strength", 1)
			H.change_stat("constitution", -1)
			H.change_stat("endurance", 1)
			H.change_stat("speed", 2)
			H.change_stat("fortune", 1)

		if("Grumete")
			H.set_blindness(0)
			to_chat(H, span_warning("No hay gaviota que no acertes gracia a la ballesta y por supuesto tu gran percepción"))
			head = /obj/item/clothing/head/roguetown/helmet/bandana
			shoes = /obj/item/clothing/shoes/roguetown/boots/leather
			shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/sailor/red
			neck = /obj/item/storage/belt/rogue/pouch/coins/poor
			gloves = /obj/item/clothing/gloves/roguetown/leather
			pants = /obj/item/clothing/under/roguetown/trou/leather
			wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
			belt = /obj/item/storage/belt/rogue/leather
			backr = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
			backl = /obj/item/storage/backpack/rogue/satchel
			beltr = /obj/item/quiver/bolts
			beltl = /obj/item/rogueweapon/huntingknife/idagger/steel
			H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/labor/fishing, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
			H.change_stat("perception", 2)
			H.change_stat("endurance", 1)
			H.change_stat("speed", 3)	
	
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)

