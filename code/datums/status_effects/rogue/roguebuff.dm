/datum/status_effect/buff
	status_type = STATUS_EFFECT_REFRESH


/datum/status_effect/buff/drunk
	id = "drunk"
	alert_type = /atom/movable/screen/alert/status_effect/buff/drunk
	effectedstats = list("intelligence" = -2, "endurance" = 1)
	duration = 5 MINUTES

/atom/movable/screen/alert/status_effect/buff/drunk
	name = "Borracho"
	desc = ""
	icon_state = "drunk"


/datum/status_effect/buff/foodbuff
	id = "foodbuff"
	alert_type = /atom/movable/screen/alert/status_effect/buff/foodbuff
	effectedstats = list("constitution" = 1,"endurance" = 1)
	duration = 10 MINUTES

/atom/movable/screen/alert/status_effect/buff/foodbuff
	name = "Buena Comida"
	desc = ""
	icon_state = "foodbuff"

/datum/status_effect/buff/druqks
	id = "druqks"
	alert_type = /atom/movable/screen/alert/status_effect/buff/druqks
	effectedstats = list("intelligence" = 5,"speed" = 3,"fortune" = -5)
	duration = 10 SECONDS

/datum/status_effect/buff/druqks/on_apply()
	. = ..()
	owner.add_stress(/datum/stressevent/high)
	if(owner?.client)
		if(owner.client.screen && owner.client.screen.len)
			var/atom/movable/screen/plane_master/game_world/PM = locate(/atom/movable/screen/plane_master/game_world) in owner.client.screen
			PM.backdrop(owner)
			PM = locate(/atom/movable/screen/plane_master/game_world_fov_hidden) in owner.client.screen
			PM.backdrop(owner)
			PM = locate(/atom/movable/screen/plane_master/game_world_above) in owner.client.screen
			PM.backdrop(owner)

/datum/status_effect/buff/druqks/on_remove()
	owner.remove_stress(/datum/stressevent/high)
	if(owner?.client)
		if(owner.client.screen && owner.client.screen.len)
			var/atom/movable/screen/plane_master/game_world/PM = locate(/atom/movable/screen/plane_master/game_world) in owner.client.screen
			PM.backdrop(owner)
			PM = locate(/atom/movable/screen/plane_master/game_world_fov_hidden) in owner.client.screen
			PM.backdrop(owner)
			PM = locate(/atom/movable/screen/plane_master/game_world_above) in owner.client.screen
			PM.backdrop(owner)

	. = ..()

/atom/movable/screen/alert/status_effect/buff/druqks
	name = "Colocado"
	desc = ""
	icon_state = "acid"

/datum/status_effect/buff/ozium
	id = "ozium"
	alert_type = /atom/movable/screen/alert/status_effect/buff/druqks
	effectedstats = list("speed" = -5, "perception" = 2)
	duration = 30 SECONDS

/datum/status_effect/buff/ozium/on_apply()
	. = ..()
	owner.add_stress(/datum/stressevent/ozium)
	ADD_TRAIT(owner, TRAIT_NOPAIN, TRAIT_GENERIC)

/datum/status_effect/buff/ozium/on_remove()
	owner.remove_stress(/datum/stressevent/ozium)
	REMOVE_TRAIT(owner, TRAIT_NOPAIN, TRAIT_GENERIC)
	. = ..()

/datum/status_effect/buff/moondust
	id = "moondust"
	alert_type = /atom/movable/screen/alert/status_effect/buff/druqks
	effectedstats = list("speed" = 2, "endurance" = 2, "intelligence" = -2)
	duration = 30 SECONDS

/datum/status_effect/buff/moondust/nextmove_modifier()
	return 0.8

/datum/status_effect/buff/moondust/on_apply()
	. = ..()
	owner.add_stress(/datum/stressevent/moondust)

/datum/status_effect/buff/moondust_purest
	id = "purest moondust"
	alert_type = /atom/movable/screen/alert/status_effect/buff/druqks
	effectedstats = list("speed" = 3, "endurance" = 3, "intelligence" = -2)
	duration = 40 SECONDS

/datum/status_effect/buff/moondust_purest/nextmove_modifier()
	return 0.8

/datum/status_effect/buff/moondust_purest/on_apply()
	. = ..()
	owner.add_stress(/datum/stressevent/moondust_purest)

/datum/status_effect/buff/weed
	id = "weed"
	alert_type = /atom/movable/screen/alert/status_effect/buff/weed
	effectedstats = list("intelligence" = 2,"speed" = -2,"fortune" = 2)
	duration = 10 SECONDS

/datum/status_effect/buff/weed/on_apply()
	. = ..()
	owner.add_stress(/datum/stressevent/weed)
	if(owner?.client)
		if(owner.client.screen && owner.client.screen.len)
			var/atom/movable/screen/plane_master/game_world/PM = locate(/atom/movable/screen/plane_master/game_world) in owner.client.screen
			PM.backdrop(owner)
			PM = locate(/atom/movable/screen/plane_master/game_world_fov_hidden) in owner.client.screen
			PM.backdrop(owner)
			PM = locate(/atom/movable/screen/plane_master/game_world_above) in owner.client.screen
			PM.backdrop(owner)

/datum/status_effect/buff/weed/on_remove()
	if(owner?.client)
		if(owner.client.screen && owner.client.screen.len)
			var/atom/movable/screen/plane_master/game_world/PM = locate(/atom/movable/screen/plane_master/game_world) in owner.client.screen
			PM.backdrop(owner)
			PM = locate(/atom/movable/screen/plane_master/game_world_fov_hidden) in owner.client.screen
			PM.backdrop(owner)
			PM = locate(/atom/movable/screen/plane_master/game_world_above) in owner.client.screen
			PM.backdrop(owner)

	. = ..()

/atom/movable/screen/alert/status_effect/buff/weed
	name = "Fumado"
	desc = ""
	icon_state = "weed"

/datum/status_effect/buff/vitae
	id = "druqks"
	alert_type = /atom/movable/screen/alert/status_effect/buff/vitae
	effectedstats = list("fortune" = 2)
	duration = 10 SECONDS

/datum/status_effect/buff/vitae/on_apply()
	. = ..()
	owner.add_stress(/datum/stressevent/high)

/datum/status_effect/buff/vitae/on_remove()
	owner.remove_stress(/datum/stressevent/high)

	. = ..()

/atom/movable/screen/alert/status_effect/buff/vitae
	name = "Revitalizado"
	desc = "He cenado el más fino de los manjares: la vida!"

/atom/movable/screen/alert/status_effect/buff/featherfall
	name = "Caida De Pluma"
	desc = "Estoy algo protegido contra caer desde las alturas."
	icon_state = "buff"

/datum/status_effect/buff/featherfall
	id = "featherfall"
	alert_type = /atom/movable/screen/alert/status_effect/buff/featherfall
	duration = 1 MINUTES

/datum/status_effect/buff/featherfall/on_apply()
	. = ..()
	to_chat(owner, span_warning("I feel lighter."))
	ADD_TRAIT(owner, TRAIT_NOFALLDAMAGE2, MAGIC_TRAIT)

/datum/status_effect/buff/featherfall/on_remove()
	. = ..()
	to_chat(owner, span_warning("The feeling of lightness fades."))
	REMOVE_TRAIT(owner, TRAIT_NOFALLDAMAGE2, MAGIC_TRAIT)

/atom/movable/screen/alert/status_effect/buff/darkvision
	name = "Vision Nocturna"
	desc = "Puedo ver ligeramente en la luz."
	icon_state = "buff"

/datum/status_effect/buff/darkvision
	id = "darkvision"
	alert_type = /atom/movable/screen/alert/status_effect/buff/darkvision
	duration = 15 MINUTES

/datum/status_effect/buff/darkvision/on_apply()
	. = ..()
	to_chat(owner, span_warning("The darkness fades somewhat."))
	ADD_TRAIT(owner, TRAIT_DARKVISION, MAGIC_TRAIT)

/datum/status_effect/buff/darkvision/on_remove()
	. = ..()
	to_chat(owner, span_warning("The darkness returns to normal."))
	REMOVE_TRAIT(owner, TRAIT_DARKVISION, MAGIC_TRAIT)

/atom/movable/screen/alert/status_effect/buff/haste
	name = "Prisa"
	desc = "Estoy magicamente apresurado."
	icon_state = "buff"

/datum/status_effect/buff/haste
	id = "haste"
	alert_type = /atom/movable/screen/alert/status_effect/buff/haste
	effectedstats = list("speed" = 5)
	duration = 1 MINUTES

/datum/status_effect/buff/haste/nextmove_modifier()
	return 0.85

/atom/movable/screen/alert/status_effect/buff/longstrider
	name = "Senderista"
	desc = "Puedo caminar por terrenos duros."
	icon_state = "buff"

/datum/status_effect/buff/longstrider
	id = "longstrider"
	alert_type = /atom/movable/screen/alert/status_effect/buff/longstrider
	duration = 15 MINUTES

/datum/status_effect/buff/longstrider/on_apply()
	. = ..()
	to_chat(owner, span_warning("I am unburdened by the terrain."))
	ADD_TRAIT(owner, TRAIT_LONGSTRIDER, MAGIC_TRAIT)

/datum/status_effect/buff/longstrider/on_remove()
	. = ..()
	to_chat(owner, span_warning("The rough floors slow my travels once again."))
	REMOVE_TRAIT(owner, TRAIT_LONGSTRIDER, MAGIC_TRAIT)


/atom/movable/screen/alert/status_effect/buff/guardbuffone
	name = "Guardia Vigilante"
	desc = "Mi hogar. Vigilo de forma aguda los entornos por los que estoy familiarizado."
	icon_state = "buff"

/atom/movable/screen/alert/status_effect/buff/knightbuff
	name = "Defensor jurado"
	desc = "He jurado defender este castillo. Mi determinación no flaqueara."
	icon_state = "buff"

/datum/status_effect/buff/guardbuffone
	id = "guardbuffone"
	alert_type = /atom/movable/screen/alert/status_effect/buff/guardbuffone
	effectedstats = list("strength" = 2, "constitution" = 3,"endurance" = 2, "speed" = 3, "perception" = 3) //if they can't figure out how to ply this for winning chances i'm going to sob openly 

/datum/status_effect/buff/knightbuff
	id = "knightbuff"
	alert_type = /atom/movable/screen/alert/status_effect/buff/knightbuff
	effectedstats = list("constitution" = 1,"endurance" = 1, "speed" = 1, "perception" = 2)
	duration = 50000 //essentially permanent, removes when we're out of the area

/datum/status_effect/buff/guardbuffone/process()

	.=..()
	var/area/rogue/our_area = get_area(owner)
	if(!(our_area.town_area))
		owner.remove_status_effect(/datum/status_effect/buff/guardbuffone)

/datum/status_effect/buff/knightbuff/process()

	.=..()
	var/area/rogue/our_area = get_area(owner)
	if(!(our_area.keep_area))
		owner.remove_status_effect(/datum/status_effect/buff/knightbuff)

//EL TRAIT DE MIERDA DE OUTDOORSMAN

/atom/movable/screen/alert/status_effect/buff/outdoorsman
	name = "Entorno no familiar"
	desc = "La ciudad esta hecha una cloaca... Toda llena de basura y gentuza, se me revuelven las tripas, me da hasta dolor de cabeza oler toda esta basura, la porqueria esta por todas partes. Si estuviera fuera de este sitio mis habilidades serian mas agudas..."
	icon_state = "debuff"

/datum/status_effect/buff/outdoorsman
	id = "outdoorsman"
	alert_type = /atom/movable/screen/alert/status_effect/buff/outdoorsman
	effectedstats = list("strength" = -2, "constitution" = -3,"endurance" = -2, "speed" = -3, "perception" = -3) //Lo mismo es un poco extremo, pero podemos ir probando
	duration = 50000 //basicamente permanente

/datum/status_effect/buff/outdoorsman/process()

	.=..()
	var/area/rogue/our_area = get_area(owner)
	if(!(our_area.town_area))
		owner.remove_status_effect(/datum/status_effect/buff/outdoorsman)

//FIN DEL TRAIT DE MIERDA
/atom/movable/screen/alert/status_effect/buff/healing
	name = "Milagro De La Curacion!"
	desc = "La intervencion divina me cura de mis males."
	icon_state = "buff"

#define MIRACLE_HEALING_FILTER "miracle_heal_glow"

/datum/status_effect/buff/healing
	id = "healing"
	alert_type = /atom/movable/screen/alert/status_effect/buff/healing
	duration = 10 SECONDS
	examine_text = "SUBJECTPRONOUN is bathed in a restorative aura!"
	var/healing_on_tick = 1
	var/outline_colour = "#c42424"

/datum/status_effect/buff/healing/on_apply()
	var/filter = owner.get_filter(MIRACLE_HEALING_FILTER)
	if (!filter)
		owner.add_filter(MIRACLE_HEALING_FILTER, 2, list("type" = "outline", "color" = outline_colour, "alpha" = 60, "size" = 1))
	return TRUE

/datum/status_effect/buff/healing/tick()
	var/obj/effect/temp_visual/heal/H = new /obj/effect/temp_visual/heal(get_turf(owner))
	H.color = "#FF0000"
	var/list/wCount = owner.get_wounds()
	if(owner.blood_volume < BLOOD_VOLUME_NORMAL)
		owner.blood_volume = min(owner.blood_volume+10, BLOOD_VOLUME_NORMAL)
	if(wCount.len > 0)
		owner.heal_wounds(healing_on_tick)
		owner.update_damage_overlays()
	owner.adjustBruteLoss(-healing_on_tick, 0)
	owner.adjustFireLoss(-healing_on_tick, 0)
	owner.adjustOxyLoss(-healing_on_tick, 0)
	owner.adjustToxLoss(-healing_on_tick, 0)
	owner.adjustOrganLoss(ORGAN_SLOT_BRAIN, -healing_on_tick)
	owner.adjustCloneLoss(-healing_on_tick, 0)

/datum/status_effect/buff/healing/on_remove()
	owner.remove_filter(MIRACLE_HEALING_FILTER)
	
/atom/movable/screen/alert/status_effect/buff/fortify
	name = "Milagro Fortificante"
	desc = "La intervencion divina me fortalece y ayuda en mi recuperacion.."
	icon_state = "buff"

/datum/status_effect/buff/fortify //Increases all healing while it lasts.
	id = "fortify"
	alert_type = /atom/movable/screen/alert/status_effect/buff/fortify
	duration = 1 MINUTES
/datum/status_effect/buff/fortitude
	id = "fortitude"
	alert_type = /atom/movable/screen/alert/status_effect/buff/fortitude
	duration = 1 MINUTES

/datum/status_effect/buff/fortitude/on_apply()
	. = ..()
	to_chat(owner, span_warning("My body feels lighter..."))
	ADD_TRAIT(owner, TRAIT_FORTITUDE, MAGIC_TRAIT)

/datum/status_effect/buff/fortitude/on_remove()
	. = ..()
	to_chat(owner, span_warning("The weight of the world rests upon my shoulders once more."))
	REMOVE_TRAIT(owner, TRAIT_FORTITUDE, MAGIC_TRAIT)

/atom/movable/screen/alert/status_effect/buff/guidance
	name = "Guidance"
	desc = "Arcyne assistance guides my hands."
	icon_state = "buff"

/datum/status_effect/buff/guidance
	id = "guidance"
	alert_type = /atom/movable/screen/alert/status_effect/buff/guidance
	duration = 1 MINUTES

/datum/status_effect/buff/guidance/on_apply()
	. = ..()
	to_chat(owner, span_warning("I have better control over my accuracy!"))
	ADD_TRAIT(owner, TRAIT_LONGSTRIDER, MAGIC_TRAIT)

/datum/status_effect/buff/guidance/on_remove()
	. = ..()
	to_chat(owner, span_warning("My feeble mind muddies my warcraft once more."))
	REMOVE_TRAIT(owner, TRAIT_LONGSTRIDER, MAGIC_TRAIT)
#undef MIRACLE_HEALING_FILTER
