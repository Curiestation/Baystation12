/datum/map/dalbarade
	allowed_jobs = list(
	/datum/job/captain,
	/datum/job/hop,
	/datum/job/pilot,
	/datum/job/chief_engineer,
	/datum/job/engineer,
	/datum/job/rd,
	/datum/job/doctor,
	/datum/job/mercenary,
	/datum/job/mining,
	/datum/job/cyborg,
	/datum/job/assistant)
	species_to_job_whitelist = list(
		/datum/species/nabber = list(/datum/job/assistant, /datum/job/mercenary, /datum/job/engineer),
		/datum/species/skrell = list(/datum/job/assistant, /datum/job/doctor, /datum/job/rd)
	)

/datum/job/captain
	supervisors = "your conscience"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/captain

/datum/job/captain/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(H.client)
		H.client.verbs += /client/proc/rename_ship
		H.client.verbs += /client/proc/rename_company

/client/proc/rename_ship()
	set name = "Rename Ship"
	set category = "Captain's Powers"

	var/ship = sanitize(input(src, "What is your ship called? Don't add the vessel prefix, the IV one will be attached automatically.", "Ship name", GLOB.using_map.station_short), MAX_NAME_LEN)
	if(!ship)
		return
	GLOB.using_map.station_short = ship
	GLOB.using_map.station_name = "IV [ship]"
	var/obj/effect/overmap/ship/dalbarade/B = locate() in world
	if(B)
		B.SetName(GLOB.using_map.station_name)
	command_announcement.Announce("Attention all hands on [GLOB.using_map.station_name]! Thank you for your attention.", "Ship re-christened")
	verbs -= /client/proc/rename_ship

/client/proc/rename_company()
	set name = "Rename Group"
	set category = "Captain's Powers"
	var/company = sanitize(input(src, "What should your group be called?", "Group name", GLOB.using_map.company_name), MAX_NAME_LEN)
	if(!company)
		return
	var/company_s = sanitize(input(src, "What's the short name for it?", "Group name", GLOB.using_map.company_short), MAX_NAME_LEN)
	if(company != GLOB.using_map.company_name)
		if (company)
			GLOB.using_map.company_name = company
		if(company_s)
			GLOB.using_map.company_short = company_s
		command_announcement.Announce("Congratulations to all members of [capitalize(GLOB.using_map.company_name)] on the new name. Their renaming has been registered by all governments and their military.", "Group name change acknowledged")
	verbs -= /client/proc/rename_company

/datum/job/captain/get_access()
	return get_all_station_access()

/datum/job/chief_engineer
	title = "Chief Engineer"
	supervisors = "the Captain"
	department_flag = ENG
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/chief_engineer

/datum/job/doctor
	title = "Surgeon"
	supervisors = "the Captain and your idea of Hippocratic Oath"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/doc
	total_positions = 1
	spawn_positions = 1
	hud_icon = "hudmedicaldoctor"

/datum/job/hop
	title = "First Officer"
	supervisors = "the Captain and your sense of morality"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/mate
	hud_icon = "hudheadofpersonnel"

/datum/job/rd
	title = "Science Officer"
	supervisors = "the Captain and your curiosity"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/rd
	hud_icon = "hudresearchdirector"

/datum/job/pilot
	title = "Pilot"
	alt_titles = list(
		"Shuttle Pilot")
	supervisors = "the Captain"
	total_positions = 1
	spawn_positions = 1
	selection_color = "#633d63"
	economic_modifier = 10
	minimal_player_age = 5
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/pilot
	hud_icon = "hudcargotechnician"
	access = list(access_heads)

/datum/job/mercenary
	title = "Mercenary"
	alt_titles = list(
		"Bodyguard")
	supervisors = "the Captain"
	total_positions = 2
	spawn_positions = 2
	selection_color = "#b31b1b"
	economic_modifier = 2
	minimal_player_age = 5
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/mercenary
	hud_icon = "hudcargotechnician"
	access = list(access_armory)

/datum/job/assistant
	title = "Deck Hand"
	supervisors = "literally everyone, you bottom feeder"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/hand
	alt_titles = list(
		"Cook" = /decl/hierarchy/outfit/job/dalbarade/hand/cook,
		"Cargo Hand",
		"Passenger")
	hud_icon = "hudcargotechnician"

/datum/job/engineer
	title = "Ship Engineer"
	supervisors = "Chief Engineer"
	total_positions = 2
	spawn_positions = 2
	hud_icon = "hudengineer"

/datum/job/mining
	title = "Prospector"
	supervisors = "the Captain"
	total_positions = 1
	spawn_positions = 1
	alt_titles = list(
		"Miner")
	hud_icon = "hudminer"
	economic_modifier = 10
	minimal_player_age = 5
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/miner

/datum/job/cyborg
	supervisors = "your laws and the Captain"
	outfit_type = /decl/hierarchy/outfit/job/dalbarade/hand/engine
	total_positions = 1
	spawn_positions = 1


// OUTFITS
#define dalbarade_OUTFIT_JOB_NAME(job_name) ("dalbarade - Job - " + job_name)

/decl/hierarchy/outfit/job/dalbarade/
	hierarchy_type = /decl/hierarchy/outfit/job/dalbarade
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	l_ear = null
	r_ear = null

/decl/hierarchy/outfit/job/dalbarade/captain
	name = dalbarade_OUTFIT_JOB_NAME("Captain")
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/captain
	r_pocket = /obj/item/device/radio
	id_type = /obj/item/weapon/card/id/gold


/decl/hierarchy/outfit/job/dalbarade/captain/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

/decl/hierarchy/outfit/job/dalbarade/chief_engineer
	name = dalbarade_OUTFIT_JOB_NAME("Chief Engineer")
	uniform = /obj/item/clothing/under/rank/chief_engineer
	glasses = /obj/item/clothing/glasses/welding/superior
	suit = /obj/item/clothing/suit/storage/hazardvest
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/workboots
	pda_type = /obj/item/modular_computer/pda/heads/ce
	l_hand = /obj/item/weapon/wrench
	belt = /obj/item/weapon/storage/belt/utility/full
	id_type = /obj/item/weapon/card/id/engineering/head
	r_pocket = /obj/item/device/radio
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/dalbarade/doc
	name = dalbarade_OUTFIT_JOB_NAME("Ship's Doc")
	uniform = /obj/item/clothing/under/det/black
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/laceup
	pda_type = /obj/item/modular_computer/pda/medical

/decl/hierarchy/outfit/job/dalbarade/mate
	name = dalbarade_OUTFIT_JOB_NAME("First Mate")
	uniform = /obj/item/clothing/under/suit_jacket/checkered
	shoes = /obj/item/clothing/shoes/laceup
	glasses = /obj/item/clothing/glasses/sunglasses/big
	pda_type = /obj/item/modular_computer/pda/cargo
	l_hand = /obj/item/weapon/clipboard

/decl/hierarchy/outfit/job/dalbarade/rd
	name = OUTFIT_JOB_NAME("Research Director")
	uniform = /obj/item/clothing/under/rank/research_director
	shoes = /obj/item/clothing/shoes/brown
	l_hand = /obj/item/weapon/clipboard
	id_type = /obj/item/weapon/card/id/science/head
	pda_type = /obj/item/modular_computer/pda/heads/rd
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/science

/decl/hierarchy/outfit/job/dalbarade/hand
	name = dalbarade_OUTFIT_JOB_NAME("Deck Hand")

/decl/hierarchy/outfit/job/dalbarade/hand/pre_equip(mob/living/carbon/human/H)
	..()
	uniform = pick(list(/obj/item/clothing/under/overalls,/obj/item/clothing/under/focal,/obj/item/clothing/under/hazard,/obj/item/clothing/under/rank/cargotech,/obj/item/clothing/under/color/black,/obj/item/clothing/under/color/grey,/obj/item/clothing/under/casual_pants/track, ))

/decl/hierarchy/outfit/job/dalbarade/hand/cook
	name = dalbarade_OUTFIT_JOB_NAME("Cook")
	head = /obj/item/clothing/head/chefhat
	suit = /obj/item/clothing/suit/chef/classic

/decl/hierarchy/outfit/job/dalbarade/pilot
	name = dalbarade_OUTFIT_JOB_NAME("Pilot")
	uniform = /obj/item/clothing/under/casual_pants/greyjeans
	suit = /obj/item/clothing/suit/storage/toggle/brown_jacket
	shoes = /obj/item/clothing/shoes/workboots
	pda_type = /obj/item/modular_computer/pda/cargo

/decl/hierarchy/outfit/job/dalbarade/mercenary
	name = dalbarade_OUTFIT_JOB_NAME("Mercenary")
	uniform = /obj/item/clothing/under/syndicate/combat
	shoes = /obj/item/clothing/shoes/dutyboots
	gloves = /obj/item/clothing/gloves/thick

/decl/hierarchy/outfit/job/dalbarade/hand/engine
	name = dalbarade_OUTFIT_JOB_NAME("Junior Engineer")
	head = /obj/item/clothing/head/hardhat
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/dalbarade/miner
	name = dalbarade_OUTFIT_JOB_NAME("Prospector")
	uniform = /obj/item/clothing/under/rank/miner
	id_type = /obj/item/weapon/card/id/cargo/mining
	pda_type = /obj/item/modular_computer/pda/science
	backpack_contents = list(/obj/item/weapon/crowbar = 1, /obj/item/weapon/storage/ore = 1)
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/dalbarade/hand/engine/pre_equip(mob/living/carbon/human/H)
	..()
	if(prob(50))
		suit = /obj/item/clothing/suit/storage/hazardvest