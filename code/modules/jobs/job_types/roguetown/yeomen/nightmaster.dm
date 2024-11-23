/*/datum/job/roguetown/niteman
	title = "Bathmaster"
	flag = NITEMASTER
	department_flag = YEOMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	f_title = "Bathmatron"
	allowed_races = RACES_ALL_KINDS
	tutorial = "You are renting out the bathhouse in a joint operation with the Innkeep. You provide security for the bathwenches and help them to find work--when you're not being a trouble-making rake that others suffer to tolerate."
	allowed_sexes = list(MALE, FEMALE)
	outfit = /datum/outfit/job/roguetown/niteman
	display_order = JDO_NITEMASTER
	give_bank_account = 20
	min_pq = 1 //No drugs until you finish the tutorial, Jimmy!
	max_pq = null
	bypass_lastclass = TRUE
	round_contrib_points = 3

/datum/outfit/job/roguetown/niteman/pre_equip(mob/living/carbon/human/H)
	..()

	var/classes = list("Hierophant","Pontifex","Vizier")
	var/classchoice = input("Choose your archetypes", "Available archetypes") as anything in classes


	switch(classchoice)
		if("Clasico")
			
			shoes = /obj/item/clothing/shoes/roguetown/shortboots
			belt = /obj/item/storage/belt/rogue/leather/rope
			shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
			beltr = /obj/item/storage/keyring/nightman
			beltl = /obj/item/storage/belt/rogue/pouch/coins/mid
			pants = /obj/item/clothing/under/roguetown/trou/leather
			
		if("Azure")
			shoes = /obj/item/clothing/shoes/roguetown/boots // Swaggier and more armored against uppity/bitey attendant
			belt = /obj/item/storage/belt/rogue/leather/black
			shirt = /obj/item/clothing/suit/roguetown/shirt/tunic/purple // Tunics are far swaggier than shirts
			wrists = /obj/item/storage/keyring/nightman
			neck = /obj/item/storage/belt/rogue/pouch/coins/mid
			pants = /obj/item/clothing/under/roguetown/trou/leather
			beltl = /obj/item/rogueweapon/whip // In case the one whip in the office has already been pilfered

	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/reagent_containers/food/snacks/grown/rogue/sweetleafdry = 2, /obj/item/reagent_containers/powder/moondust = 2, /obj/item/reagent_containers/powder/spice = 1)
	// Bath master got that good good
		
			
	
	ADD_TRAIT(H, TRAIT_SEEPRICES_SHITTY, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_NUTCRACKER, TRAIT_GENERIC)
	ADD_TRAIT(H, TRAIT_GOODLOVER, TRAIT_GENERIC)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 4, TRUE) // Need the strongarm to wrestle people out of the baths
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/stealing, 4, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/lockpicking, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE) // Below here are skills bath attendants have. Only makes sense to have them >= for the head honcho
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE) // Being a more rowdy type, they should be capable with a knife
		H.change_stat("strength", 1)
		H.change_stat("intelligence", -1)
		H.change_stat("constitution", 1)
		H.change_stat("perception", -1)
		H.change_stat("endurance", 2)

	if(H.pronouns == HE_HIM || H.pronouns == THEY_THEM || H.pronouns == IT_ITS)
		armor = /obj/item/clothing/suit/roguetown/armor/leather/vest/sailor/nightman
		H.dna.species.soundpack_m = new /datum/voicepack/male/zeth()
	else
		armor = /obj/item/clothing/suit/roguetown/armor/armordress/alt
// man este si lo tocaron y lo entiendo, basicamente es un guardaespaldas o algo asi lei en sus logs, igual lo dividi en clases
*/