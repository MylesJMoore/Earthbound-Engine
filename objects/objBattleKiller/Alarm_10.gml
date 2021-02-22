/// @description Level up

if instance_exists(objBattleMsg) {
    alarm[10] = 1
} else {
    if audio_is_playing(sndwin) || audio_is_playing(sndwinboss) {
        audio_stop_all()
        audio_play_sound(sndlevelup,0,1)
    }
    
    level_up_battle(10)

    alarm[11] = 1;
}

