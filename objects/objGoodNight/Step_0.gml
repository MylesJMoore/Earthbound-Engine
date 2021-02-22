if mode = 0 {
    if alpha < 1{
        alpha += 0.025
    } else {
        mode = 1
    }
} else if mode = 1 {
    mode = 2
    audio_pause_all()
    audio_play_sound(sndGoodnight,0,0)
    for (var i=1;i<global.pl_count+1;i++){
        if !global.dead[i] {
            global.s_hp[i] = global.s_hpmax[i]
            global.s_pp[i] = global.s_ppmax[i]
        }
    }
    alarm[0] = 3*room_speed
} else if mode = 3 {
    if alpha > 0 {
        alpha -= 0.025
    } else {
        objPlayer.canmove = 1
        instance_destroy()
    }
}

