/// @description start_cutscene(timeline)
/// @param timeline
function start_cutscene(argument0) {

	timeline_index = argument0;
	timeline_running = 1;
	timeline_loop = 0;
	global.cutscene = 1;
	global.timeline_obj = id;

	if ie(objPlayer) {
	    objPlayer.canmove = 0;
	    objPlayer.speed = 0;
	}



}
