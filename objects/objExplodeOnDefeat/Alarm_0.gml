if instance_exists(objBattleMsg) {
    alarm[0] = 1
} else {
    active = 1
    visible = 1
    alarm[1] = 2
    audio_play_sound(sndwater,0,0)
}

