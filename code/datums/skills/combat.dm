/datum/skill/combat
	abstract_type = /datum/skill/combat
	name = "Combat"
	desc = ""
	dream_cost_base = 2
	dream_cost_per_level = 1

/datum/skill/combat/proc/get_skill_parry_modifier(level) //added parry drain/neg in parries and dodges
	switch(level)
		if(SKILL_LEVEL_NONE)
			return 0
		if(SKILL_LEVEL_NOVICE)
			return 5
		if(SKILL_LEVEL_APPRENTICE)
			return 10
		if(SKILL_LEVEL_JOURNEYMAN)
			return 15
		if(SKILL_LEVEL_EXPERT)
			return 20
		if(SKILL_LEVEL_MASTER)
			return 25
		if(SKILL_LEVEL_LEGENDARY)
			return 35

/datum/skill/combat/proc/get_skill_dodge_drain(level) //added parry drain/neg in parries and dodges
	switch(level)
		if(SKILL_LEVEL_NONE)
			return 30
		if(SKILL_LEVEL_NOVICE)
			return 60
		if(SKILL_LEVEL_APPRENTICE)
			return 90
		if(SKILL_LEVEL_JOURNEYMAN)
			return 120
		if(SKILL_LEVEL_EXPERT)
			return 180
		if(SKILL_LEVEL_MASTER)
			return 240
		if(SKILL_LEVEL_LEGENDARY)
			return 300

/datum/skill/combat/knives
	name = "Hojas Cortas"
	dreams = list(
		"...el tavernero silba mientras limpia copas y un borracho noqueado ronca en la barra. El resto del establecimiento está centrado en ti, mirándote sin respirar mientras tu daga baila entre tus dedos en una increíble muestra de prestidigitación...",
		"...un destello metálico atraviesa el cielo, y otro, y otro... las hojas danzan con tus malabares, al compás de una canción sorda...",
		"...la hoja, diminuta e invisible, se esconde cómodamente en tu capa. La inspección del guardia no la encuentra. Un puñal así de pequeño no puede ser desviado..."
	)


/datum/skill/combat/swords
	name = "Hojas Largas"
	dreams = list(
		"...tu corazón es un tambor dictando tu marcha mientras tu espada y la suya chocan; deflectas, apuntas una estocada y lo terminas...",
		"...una extensión de deslumbrante acero plateado. Un símbolo, un testimonio, más que solo un arma. Manchas de sangre el agua de templar, haces chispas volar de la piedra de afilar... mantienes tu hoja, y mantiene tu honor a cambio..."
	)

/datum/skill/combat/polearms
	name = "Astiles"
	dreams = list(
	"...la pálida bestia muerde el aire impotentemente; tu arma tiene alcance superior. Apuñalada y herida, brama y se retira de nuevo a la foresta dejando un brillante rastro de sangre...",
	"...y lo único que hace tolerable este pantano fétido es tu amada asta. La enganchas en una piedra, te sacas del lodo y continúas viaje..."
	)

/datum/skill/combat/maces
	name = "Mazas"
	dreams = list(
	"...la oscuridad cae como cortinas negras. Golpeas sordamente una y otra vez contra las paredes con un estruendo que te lleva a la sordera, pero lentamente te liberas....",
	"...'Soy inevitable. Soy impenetrable.' reclama el blanco guardián. Acto seguido, aplastas su cráneo con tu maza; impenetrable sí, pero aplastable...",
	"...el aire tiembla y convulsa bajo el repique irrefrenable de tu sinfonía; tu pesada arma el badajo para una fatal campana. Este es tu ritmo, tu himno...",
	"...'Esta hoja es una obra maestra; artesanía sublime de Malum.' dijo el elfo, una fracción de segundo antes de que sus sesos pasaran del interior de cráneo a pintar el muro, trabajo de tu primordial herramienta..."
	)

/datum/skill/combat/axes
	name = "Hachas"
	dreams = list(
	"...los huesos son tal como árboles; mientras más grandes más fuerte caen. Con un monstruoso golpe final, decapitas al esqueleto, protegiendo tu pueblo una vez más...",
	"...arrancas tu arma del pellejo sangriento, en donde estaba incrustada. Se libera, y te empapa de tripas de pies a cabeza. Cazar no es fácil ni cómodo, pero te enseñaron bien...",
	"...cae tu hacha, y cae otro árbol. Te gotea la savia fresca de la barbilla. Harás de este bosque un parque, y de ese parque un desierto. Pausas para admirar tu trabajo, y notas miembros mutilados, pieles arrancadas... has hecho un matadero de la plaza del pueblo...",
	"...la voluntad del Hierro te pesa en los brazos. Sabe dónde quiere caer, y solo debes guiarlo. Sabiéndolo, tu hacha se siente mucho más ligera...",
	"...a pesar de lo insondable de los desafíos que te esperan, no temes, ya que sigue a tu lado tu fiel hacha. Con ella, es mucho más fácil solucionar problemas con pensamiento crítico..."
	)

/datum/skill/combat/whipsflails
	name = "Látigos"
	dreams = list(
	"...el silbido de las cadenas de tu lucero del alba atravesando el aire despierta a un pobre diablo, pero su pesada cabeza rápidamente lo pone a dormir de nuevo...",
	"...con un silbido y un estallido, otra marca se luce en la maltratada piel. Vuelves el látigo, y azotas de nuevo. Le domesticarás..."
	)

/datum/skill/combat/bows
	name = "Arquería"
	dreams = list(
	"...la frígida brisa te flanquea de la izquierda, así que ajustas tu puntería con ella en mente. Tus músculos se relajan, y tu arco exhala. Tu objetivo cae muerto a las calles, fulminado...",
	"...de dedos sangrantes, sueltas otra flecha, que rebota inútilmente de la coraza del caballero pálido. Gruñes, acomodas otra, apuntas a su visor, y rezas a cualquier dios que te escuche...",
	"...recargar una ballesta le toma medio minuto a un soldado experimentado, aún con el equipamiento adecuado. Puedes matar cinco hombres con tres flechas en la mitad de ese tiempo..."
	)

/datum/skill/combat/crossbows
	name = "Ballestas"
	dreams = list(
	"...pisas fuerte y tiras del hilo. Pones todas tus fuerzas en recargar la ballesta, aunque se sienta como si se estuviera burlando de ti. Solo cuando recuerdas que debes tirar con la espalda y no las rodillas haces progreso...",
	"...esta arma, no, esta maravilla de la ingeniería, necesita muy poco para hacer su arte; un pulso estable, y puntería letal..."
	)

/datum/skill/combat/wrestling
	name = "Lucha"
	dreams = list(
	"...lo tomas de la camisa y combinas retorcerla con una fuerte embestida, dejándolo tumbado. Tose desde el suelo, con una sonrisa orgullosa y aprobadora...",
	"...la tierra en tus pulmones te hace convulsionar, y tus piernas fallan. Eres incapaz de levantarte. Mientras intentas, escuchas y ves botas metálicas pararse enfrente tuyo para darte el golpe de gracia. Antes de que lo logren, tiras de una pierna para hacer que tu casi-asesino caiga al barro contigo..."
	)

/datum/skill/combat/unarmed
	name = "Puño Limpio"
	dreams = list(
	"...el chasqueteo tremoloso de tu mandíbula chocando consigo misma alcanza tus orejas antes de que tu mente logre procesarlo. Te noquearon de un solo fiero gancho...",
	"...tus uñas, zarpas; tus manos, armas; tus huesos, garrotes. Un espectador silencioso, de coraza pálida, aprueba de tu ferocidad con la cabeza, y baja un pulgar, para el disgusto de tu oponente tumbado..."
	)

/datum/skill/combat/shields
	name = "Escudos"
	dreams = list(
	"...la condenada lagartija escupe fuego, pero tu postura se mantiene firme, ya que te cubre una montaña de acero que llevas amarrada al brazo...",
	"...la medialuna grabada en tu escudo brilla, aún bajo la luz de Astrata. Un reflejo en ella te alerta; lo subes súbitamente, y deflectas una flecha asesina..."
	)
