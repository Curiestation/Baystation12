/datum/map/dalbarade
	allowed_jobs = list(
	/datum/job/captain,
	/datum/job/hop,
	/datum/job/chief_engineer,
	/datum/job/engineer,
	/datum/job/rd,
	/datum/job/scientist,
	/datum/job/doctor,
	/datum/job/hos,
	/datum/job/security,
	/datum/job/assistant,
	/datum/job/ai)

/datum/job/assistant
	title = "D-Class"
	supervisors = "the Foundation staff"
	outfit_type = /decl/hierarchy/outfit/job/ayin/dclass
	hud_icon = "hudcargotechnician"
	selection_color = "#f49542"

/datum/job/captain
	title = "Site Manager"
	supervisors = "the Extrasolar Sites Management and the O5 Council"
	outfit_type = /decl/hierarchy/outfit/job/ayin/sitem
	hud_icon = "hudcaptain"

/datum/job/hop
	title = "Staff Manager"
	supervisors = "the Site Manager"
	outfit_type = /decl/hierarchy/outfit/job/ayin/staffm
	hud_icon = "hudheadofpersonnel"

/datum/job/chief_engineer
	title = "Containment Manager"
	supervisors = "the Site Manager & the Staff Manager"
	outfit_type = /decl/hierarchy/outfit/job/ayin/ce
	hud_icon = "hudchiefengineer"

/datum/job/engineer
	title = "Containment Engineer"
	supervisors = "the Containment Manager"
	outfit_type = /decl/hierarchy/outfit/job/ayin/engi
	hud_icon = "hudengineer"

/datum/job/rd
	title = "Research Manager
	supervisors = "the Site Manager & the Staff Manager"
	outfit_type = /decl/hierarchy/outfit/job/ayin/rd
	hud_icon = "hudresearchdirector"

/datum/job/scientist
	title = "Researcher"
	supervisors = "the Research Manager"
	alt_titles = list(
		"Chemist",
		"Botanist",
		"Virologist",
		"Psychologist" = /decl/hierarchy/outfit/job/ayin/psych)
	outfit_type = /decl/hierarchy/outfit/job/ayin/scientist
	hud_icon = "hudscientist"

/datum/job/doctor
	title = "Physician"
	supervisors = "the Staff Manager"
	alt_titles = list(
		"Surgeon")
	outfit_type = /decl/hierarchy/outfit/job/ayin/doctor
	hud_icon = "hudmedicaldoctor"

/datum/job/hos
	title = "Security Manager
	supervisors = "the Site Manager & the Staff Manager"
	outfit_type = /decl/hierarchy/outfit/job/ayin/hos
	hud_icon = "hudheadofsecurity"

/datum/job/officer
	title = "Security Agent
	supervisors = "the Security Manager"
	outfit_type = /decl/hierarchy/outfit/job/ayin/officer
	hud_icon = "hudsecurityofficer"
