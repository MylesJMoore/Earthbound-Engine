if instance_exists(objBattleMsg) {
    alarm[0] = 1
} else {
    active = 1
    visible = 1
    alarm[2] = 1
    audio_play_sound(sndStrange,0,0);
}

