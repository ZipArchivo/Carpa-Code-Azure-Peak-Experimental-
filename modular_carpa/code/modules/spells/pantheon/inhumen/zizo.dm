// T1: (fires a bone splinter at a target for brute and bleeding if you're not holding bones in your other hand, fires a significantly stronger bone lance if you are)

/obj/effect/proc_holder/spell/invoked/projectile/profane
	name = "Profane"
	desc = "Fire forth a splinter of unholy bone, tearing flesh and causing bleeding. If you hold pieces of bone in your other hand, you will coax a much stronger lance of bone into being."
	clothes_req = FALSE
	overlay_state = "profane"
	range = 8
	associated_skill = /datum/skill/magic/arcane
	projectile_type = /obj/projectile/magic/profane
	chargedloop = /datum/looping_sound/invokeholy
	releasedrain = 30
	chargedrain = 0
	chargetime = 15
	charge_max = 10 SECONDS

/obj/effect/proc_holder/spell/invoked/projectile/profane/miracle
	miracle = TRUE
	devotion_cost = 15
	associated_skill = /datum/skill/magic/holy

/obj/effect/proc_holder/spell/invoked/projectile/profane/fire_projectile(mob/living/user, atom/target)
	current_amount--

	var/obj/item/held_item = user.get_active_held_item()
	var/big_cast = FALSE
	if (istype(held_item, /obj/item/stack/sheet/bone))
		var/obj/item/stack/sheet/bone/bonez = held_item
		if (bonez.use(1))
			projectile_type = /obj/projectile/magic/profane/major
			big_cast = TRUE
	else if (istype(held_item, /obj/item/natural/bone))
		qdel(held_item)
		projectile_type = /obj/projectile/magic/profane/major
		big_cast = TRUE
	else if (istype(held_item, /obj/item/natural/bundle/bone))
		var/obj/item/natural/bundle/bone/boney_bundle = held_item
		if (boney_bundle.use(1))
			projectile_type = /obj/projectile/magic/profane/major
			big_cast = TRUE

	var/obj/projectile/P = new projectile_type(user.loc)
	P.firer = user
	P.preparePixelProjectile(target, user)
	P.fire()

	if (big_cast)
		user.visible_message(span_danger("[user] conjura y lanza una cruel lanza de hueso hacia [target]!"), span_notice("Lanzo una lanza cruel de hueso profanado a [target]!"))
	else
		user.visible_message(span_danger("[user] dirige una astilla de hueso hacia [target]!"), span_notice("Lanzo un fragmento de hueso profanado a [target]!"))

	projectile_type = initial(projectile_type)

/obj/projectile/magic/profane
	name = "profaned bone splinter"
	icon_state = "chronobolt"
	damage = 20
	damage_type = BRUTE
	nodamage = FALSE
	var/embed_prob = 10

/obj/projectile/magic/profane/major
	name = "profaned bone lance"
	damage = 35
	embed_prob = 30

/obj/projectile/magic/profane/on_hit(atom/target, blocked)
	. = ..()
	if (iscarbon(target) && prob(embed_prob))
		var/mob/living/carbon/carbon_target = target
		var/obj/item/bodypart/victim_limb = pick(carbon_target.bodyparts)
		var/obj/item/stack/sheet/bone/splinter/our_splinter = new
		victim_limb.add_embedded_object(our_splinter, FALSE, TRUE)

/obj/item/stack/sheet/bone/splinter
	name = "bone splinter"
	singular_name = "bone splinter"
	embedding = list(
		"embed_chance" = 100,
		"embedded_pain_chance" = 25,
		"embedded_fall_chance" = 5,
	)

/obj/item/stack/sheet/bone/splinter/dropped(mob/user, silent)
	. = ..()
	to_chat(user, span_danger("[src] se desmorona en polvo..."))
	qdel(src)

// T2: just use lesser animate undead for now

/obj/effect/proc_holder/spell/invoked/raise_lesser_undead/miracle
	miracle = TRUE
	devotion_cost = 75
	cabal_affine = TRUE

// T3: Rituos (usable once per sleep cycle, allows you to choose any 1 arcane spell to use for the duration w/ an associated devotion cost. each time you change it, 1 of your limbs is skeletonized, if all of your limbs are skeletonized, you gain access to arcane magic. continuing to use rituos after being fully skeletonized gives you additional spellpoints). Gives you the MOB_UNDEAD flag (needed for skeletonize to work) on first use.

/obj/effect/proc_holder/spell/invoked/rituos
	name = "Rituos"
	desc = "Draw upon the Lesser Work of She Who Is Z, and expunge the trappings of mortal flesh from your form in exchange for power unimaginable. Be warned: indulging in even the first step of this ritual will make you more deadite than not..."
	clothes_req = FALSE
	overlay_state = "rituos"
	associated_skill = /datum/skill/magic/arcane
	chargedloop = /datum/looping_sound/invokeholy
	chargedrain = 0
	chargetime = 50
	releasedrain = 90
	no_early_release = TRUE
	movement_interrupt = TRUE
	charge_max = 2 MINUTES
	var/list/excluded_bodyparts = list(/obj/item/bodypart/head)
	var/list/obj/effect/proc_holder/spell/spell_choices = list(/obj/effect/proc_holder/spell/invoked/projectile/fireball,
		/obj/effect/proc_holder/spell/invoked/projectile/lightningbolt,
		/obj/effect/proc_holder/spell/invoked/projectile/fetch,
		/obj/effect/proc_holder/spell/invoked/projectile/spitfire,
		/obj/effect/proc_holder/spell/invoked/forcewall_weak,
		/obj/effect/proc_holder/spell/invoked/slowdown_spell_aoe,
		/obj/effect/proc_holder/spell/self/message,
		/obj/effect/proc_holder/spell/invoked/push_spell,
		/obj/effect/proc_holder/spell/invoked/blade_burst,
		/obj/effect/proc_holder/spell/targeted/touch/nondetection,
		/obj/effect/proc_holder/spell/invoked/haste,
		/obj/effect/proc_holder/spell/invoked/featherfall,
		/obj/effect/proc_holder/spell/targeted/touch/darkvision,
		/obj/effect/proc_holder/spell/invoked/longstrider,
		/obj/effect/proc_holder/spell/invoked/invisibility,
		/obj/effect/proc_holder/spell/invoked/blindness,
	)

/obj/effect/proc_holder/spell/invoked/rituos/miracle
	miracle = TRUE
	devotion_cost = 120
	associated_skill = /datum/skill/magic/holy

/obj/effect/proc_holder/spell/invoked/rituos/proc/check_ritual_progress(mob/living/carbon/user)
	var/rituos_complete = TRUE
	for (var/obj/item/bodypart/our_limb in user.bodyparts)
		if (our_limb.type in excluded_bodyparts)
			continue
		if (!our_limb.skeletonized)
			rituos_complete = FALSE
		
	return rituos_complete

/obj/effect/proc_holder/spell/invoked/rituos/proc/get_skeletonized_bodyparts(mob/living/carbon/user)
	var/skeletonized_parts = list()
	for (var/obj/item/bodypart/our_limb in user.bodyparts)
		if (our_limb.type in excluded_bodyparts)
			continue
		if (our_limb.skeletonized)
			skeletonized_parts += our_limb.type
	
	return skeletonized_parts

/obj/effect/proc_holder/spell/invoked/rituos/cast(list/targets, mob/living/carbon/user)
	//check to see if we're all skeletonized first
	var/pre_rituos = check_ritual_progress(user)
	if (pre_rituos)
		to_chat(user, span_notice("He completado Su obra menor. Ahora sólo me espera el lichdom, pero fuera de mi alcance...."))
		return FALSE

	if (user.mind?.has_rituos)
		to_chat(user, span_warning("No tengo la fortaleza mental para volver a realizar la Obra Menor. Primero debo descansar..."))
		return FALSE

	//hoo boy. here we go.
	var/list/possible_parts = user.bodyparts.Copy()
	var/list/skeletonized_parts = get_skeletonized_bodyparts(user)

	for(var/obj/item/bodypart/BP in possible_parts)
		for(var/bodypart_type in excluded_bodyparts)
			if(istype(BP, bodypart_type))
				possible_parts -= BP
				break
		for(var/skeleton_part in skeletonized_parts)
			if (istype(BP, skeleton_part))
				possible_parts -= BP
				break

	var/obj/item/bodypart/the_part = pick(possible_parts)
	var/obj/item/bodypart/part_to_bonify = user.get_bodypart(the_part.body_zone)

	var/list/choices = list()
	for(var/i = 1, i <= spell_choices.len, i++)
		choices["[spell_choices[i].name]"] = spell_choices[i]

	var/choice = input("Elige una expresión arcyne de la Obra Menor") as null|anything in choices
	var/obj/effect/proc_holder/spell/item = choices[choice]

	if (!choice || !item)
		return FALSE

	if (!(user.mob_biotypes & MOB_UNDEAD))
		user.visible_message(span_warning("El palor de la tumba desciende sobre la piel de [user] en una ola de energia arcyne..."), span_boldwarning("¡Un escalofrio mortal invade mi cuerpo en mi primera culminacion de la Obra Menor! Siento mi corazon ralentizarse en mi pecho..."))
		user.mob_biotypes |= MOB_UNDEAD
		to_chat(user, span_smallred("He abandonado a los vivos. Ahora estoy más cerca de un muerto que de un mortal... pero todavía respiro y sangro."))
	
	part_to_bonify.skeletonize(FALSE)
	user.update_body_parts()
	user.visible_message(span_warning("Debiles runas brillan bajo la piel de [user] antes de que la carne de [user.p_their()] se deslice repentinamente de su [part_to_bonify.name]!"), span_notice("Siento el poder arcyne fluir a través de mi fragil forma mortal, mientras el Rituos toma su terrible precio de mi [part_to_bonify.name]."))

	if (user.mind?.rituos_spell)
		to_chat(user, span_warning("Mi conocimiento de  [user.mind.rituos_spell.name] se va..."))
		user.mind.RemoveSpell(user.mind.rituos_spell)
		user.mind.rituos_spell = null

	user.mind.has_rituos = TRUE
	
	var/post_rituos = check_ritual_progress(user)
	if (post_rituos)
		//everything but our head is skeletonized now, so grant them journeyman rank and 3 extra spellpoints to grief people with
		user.mind?.adjust_skillrank(/datum/skill/magic/arcane, 3, TRUE)
		user.mind?.AddSpell(new /obj/effect/proc_holder/spell/targeted/touch/prestidigitation)
		user.mind?.adjust_spellpoints(3)
		user.visible_message(span_boldwarning("La forma de [user] se hincha con un poder terrible mientras desecha casi todos los restos de su carne mortal, runas arcyne brillando sobre sus huesos expuestos..."), span_notice("¡LO HE HECHO! ¡HE COMPLETADO SU TRABAJO MENOR! Estoy en la cuspide de un poder indescriptible, pero todavia falta algo..."))
		ADD_TRAIT(user, TRAIT_NOHUNGER, "[type]")
		ADD_TRAIT(user, TRAIT_NOBREATH, "[type]")
		if (prob(33))
			to_chat(user, span_small("...que es lo que he hecho?"))
		return TRUE
	else
		to_chat(user, span_notice("La Obra Menor de Rituos inunda mi mente con conocimiento arcyne robado: ahora puedo lanzar [item.name] hasta que descanse nuevamente..."))
		user.mind.rituos_spell = item
		user.mind.AddSpell(new item)
		return TRUE
