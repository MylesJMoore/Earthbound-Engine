if instance_exists(objBattleMsg) {
    alarm[4] = 1
} else {
    audio_stop_sound(sndlevelup)
    instance_destroy()
}

