if alpha >= 1 {
    if room != rmBattle {
        room_goto(rmBattle)
    } else {
        audio_stop_all()
        room_goto(global.theroom)
    }
} else {
    alpha += fadespd
    alarm[0] = 1
}

