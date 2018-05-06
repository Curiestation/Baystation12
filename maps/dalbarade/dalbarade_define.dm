/datum/map/dalbarade
	name = "Dalbarade"
	full_name = "IV Dalbarade"
	path = "dalbarade"

	station_name  = "IV Dalbarade"
	station_short = "Dalbarade"

	dock_name     = "Omega-682 Dockyard"
	boss_name     = "Civil Overwatch"
	boss_short    = "Overwatch"
	company_name  = "Star Company"
	company_short = "SCOM"

	station_levels = list(1,2,3)
	contact_levels = list(1,2,3)
	player_levels = list(1,2,3)
	overmap_size = 20

	overmap_event_areas = 18

	default_law_type = /datum/ai_laws/corporate

	evac_controller_type = /datum/evacuation_controller/lifepods
	lobby_icon = 'maps/example/example_lobby.dmi'
	lobby_tracks = list(/music_track/absconditus)

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"

	use_overmap = 1
	num_exoplanets = 2
	planet_size = list(129,129)

	away_site_budget = 2

	welcome_sound = 'sound/effects/cowboysting.ogg'

	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, maintaining burn for %ETA%."

	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will launch in %ETA%"
	emergency_shuttle_called_sound = sound('sound/AI/torch/abandonship.ogg', volume = 45)

	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."

	starting_money = 5000
	department_money = 0
	salary_modifier = 0.2


/datum/map/overmap_example/map_info(victim)
	to_chat(victim, "You're aboard the <b>[station_name],</b> an independent vessel, on a SPACE FRONTIER. No major corporation or government has laid claim on the planets in this sector, so their exploitation is entirely up to you - mine, poach and deforest all you want.")

/datum/map/overmap_example/setup_map()
	..()
	GLOB.traders += new /datum/trader/xeno_shop
	GLOB.traders += new /datum/trader/medical
	GLOB.traders += new /datum/trader/mining
	GLOB.traders += new /datum/trader/ship/electronics

