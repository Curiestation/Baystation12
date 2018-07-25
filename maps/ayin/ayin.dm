#if !defined(using_map_DATUM)
	#include "ayin_areas.dm"

	#include "job/jobs.dm"
	#include "job/outfits.dm"

	#include "ayin-1.dmm"
	#include "ayin-2.dmm"
	#include "ayin-3.dmm"

	#include "../../code/datums/music_tracks/chasing_time.dm"

	#define using_map_DATUM /datum/map/ayin

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring Ayin

#endif