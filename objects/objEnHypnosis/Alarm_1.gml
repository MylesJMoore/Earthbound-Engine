if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    active = 1
    visible = !backfire
    audio_play_sound(sndHypnosisA,0,0)
    alarm[2] = 2
}

