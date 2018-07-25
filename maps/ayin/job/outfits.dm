// OUTFITS
#define dalbarade_OUTFIT_JOB_NAME(job_name) ("Ayin - Job - " + job_name)

/decl/hierarchy/outfit/job/ayin/
	hierarchy_type = /decl/hierarchy/outfit/job/dalbarade
	pda_slot = slot_l_store
	l_ear = null
	r_ear = null

/obj/item/clothing/under/rank/scientist/executive
	name = "\improper SCP Foundation executive polo and pants"
	desc = "A fashionable polo and pair of trousers made from expensive biohazard-resistant fabrics. The colors denote the wearer as a member of the SCP Foundation's higher-ups."

/obj/item/clothing/under/rank/scientist
	name = "\improper SCP Foundation polo and pants"
	desc = "A fashionable polo and pair of trousers made from patented biohazard-resistant synthetic fabrics. The colors denote the wearer as a member of the SCP Foundation."

/obj/item/clothing/under/suit_jacket/nt
	name = "\improper SCP Foundation executive suit"
	desc = "A suit that the SCP Foundation gives to its executives."

/obj/item/clothing/under/rank/guard
	desc = "A durable uniform worn by the SCP Foundation security."
	name = "\improper SCP Foundation security uniform"


/decl/hierarchy/outfit/job/ayin/sitem
	name = ayin_OUTFIT_JOB_NAME("Site Manager")
	uniform = /obj/item/clothing/under/suit_jacket/nt
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/captain
	r_pocket = /obj/item/device/radio
	id_type = /obj/item/weapon/card/id/gold
	pda_type = /obj/item/modular_computer/pda/captain

/decl/hierarchy/outfit/job/ayin/staffm
	name = OUTFIT_JOB_NAME("Staff Manager")
	uniform = /obj/item/clothing/under/rank/scientist/executive
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/black
	id_type = /obj/item/weapon/card/id/silver
	pda_type = /obj/item/modular_computer/pda/heads/hop

/decl/hierarchy/outfit/job/ayin/ce
	name = OUTFIT_JOB_NAME("Containment Manager")
	belt = /obj/item/weapon/storage/belt/utility/full
	shoes = /obj/item/clothing/shoes/workboots
	head = /obj/item/clothing/head/hardhat/white
	gloves = /obj/item/clothing/gloves/thick
	r_pocket = /obj/item/device/radio
	pda_type = /obj/item/modular_computer/pda/heads/ce
	id_type = /obj/item/weapon/card/id/engineering/head
	uniform = /obj/item/clothing/under/rank/chief_engineer

/decl/hierarchy/outfit/job/ayin/engi
	name = OUTFIT_JOB_NAME("Containment Engineer")
	head = /obj/item/clothing/head/hardhat
	uniform = /obj/item/clothing/under/rank/engineer
	id_type = /obj/item/weapon/card/id/engineering
	r_pocket = /obj/item/device/radio
	shoes = /obj/item/clothing/shoes/workboots
	belt = /obj/item/weapon/storage/belt/utility/full
	head = /obj/item/clothing/head/hardhat/white

/decl/hierarchy/outfit/job/ayin/rd
	name = OUTFIT_JOB_NAME("Research Manager")
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	pda_type = /obj/item/modular_computer/pda/science
	uniform = /obj/item/clothing/under/rank/scientist/executive
	shoes = /obj/item/clothing/shoes/brown
	l_hand = /obj/item/weapon/clipboard
	r_pocket = /obj/item/device/radio
	id_type = /obj/item/weapon/card/id/science/head
	pda_type = /obj/item/modular_computer/pda/heads/rd

/decl/hierarchy/outfit/job/ayin/scientist
	name = OUTFIT_JOB_NAME("Researcher")
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/science
	uniform = /obj/item/clothing/under/rank/scientist
	r_pocket = /obj/item/device/radio
	id_type = /obj/item/weapon/card/id/science
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/science

/decl/hierarchy/outfit/job/ayin/doctor
	name = OUTFIT_JOB_NAME("Physician")
	shoes = /obj/item/clothing/shoes/white
	pda_type = /obj/item/modular_computer/pda/medical
	uniform = /obj/item/clothing/under/rank/medical
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	l_pocket = /obj/item/device/flashlight/pen
	r_pocket = /obj/item/device/radio
	id_type = /obj/item/weapon/card/id/medical

/decl/hierarchy/outfit/job/ayin/hos
	name = OUTFIT_JOB_NAME("Security Manager")
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	gloves = /obj/item/clothing/gloves/thick
	shoes = /obj/item/clothing/shoes/jackboots
	uniform = /obj/item/clothing/under/rank/guard
	suit = /obj/item/clothing/suit/armor/vest
	id_type = /obj/item/weapon/card/id/security/head
	pda_type = /obj/item/modular_computer/pda/heads/hos
	head = /obj/item/clothing/head/beret/sec
	r_pocket = /obj/item/device/radio
	backpack_contents = list(/obj/item/weapon/handcuffs = 1)

/decl/hierarchy/outfit/job/security/officer
	name = OUTFIT_JOB_NAME("Security Agent")
	glasses = /obj/item/clothing/glasses/sunglasses/sechud
	uniform = /obj/item/clothing/under/rank/guard
	shoes = /obj/item/clothing/shoes/jackboots
	id_type = /obj/item/weapon/card/id/security
	pda_type = /obj/item/modular_computer/pda/security
	r_pocket = /obj/item/device/radio
	backpack_contents = list(/obj/item/weapon/handcuffs = 1)

/decl/hierarchy/outfit/job/ayin/dclass
	name = OUTFIT_JOB_NAME("DClass")
	uniform = /obj/item/clothing/under/color/orange
	shoes = /obj/item/clothing/shoes/white