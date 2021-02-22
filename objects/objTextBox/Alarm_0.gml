/// @description Close dialog bog, handle questions and timelines
if instance_exists(objQuestion) {
    objQuestion.alarm[0] = 1
} else {
    if global.timeline_obj != noone {
        with global.timeline_obj { timeline_running = 1; timeline_speed = 1; } 
    } else {
        if instance_exists(objPlayer) {
            objPlayer.canmove = !global.cutscene
        }
    }
}

if room = rmFallback { game_restart() }

if over_sound != 0 { audio_play_sound(over_sound,10,0) } 

instance_destroy();

