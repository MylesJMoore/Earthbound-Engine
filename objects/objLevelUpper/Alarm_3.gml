/// @description Level up

if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {

    if !audio_is_playing(sndlevelup) {
        audio_stop_sound(sndwinboss)
        audio_stop_sound(sndwin)
        audio_stop_sound(sndEasyWin)
        audio_play_sound(sndlevelup,0,1)
    }

    level_up_battle(3);
    
    alarm[4] = 1;
}

