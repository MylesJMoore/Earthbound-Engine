/// @description Revitalising!
if instance_exists(objTextBox) { alarm[9] = 1 } else {
    objPlayer.canmove = 0
    audio_pause_all()
    audio_play_sound(sndGoodnight,0,0)
    for (var i=1;i<global.pl_count+1;i++){
        global.s_poison[i] = 0;
        global.s_infected[i] = 0;
        global.s_numb[i] = 0;
        global.s_strange[i] = 0;
        global.dead[i] = 0
        global.s_hp[i] = global.s_hpmax[i]
        global.s_pp[i] = global.s_ppmax[i]
    }
    alarm[0] = 3*room_speed
    global.cutscene = 1
}

