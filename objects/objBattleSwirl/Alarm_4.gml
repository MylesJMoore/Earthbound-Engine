if instance_exists(objBattleMsg) {
    alarm[4] = 1
} else {
    objPlayer.canmove = 1
    audio_stop_sound(sndlevelup)
    audio_stop_sound(sndEasyWin)
    audio_resume_sound(global.bgMusic_)
    instance_destroy()
    with objOwEnemyBlink { event_perform(ev_other, ev_room_start) }
}

