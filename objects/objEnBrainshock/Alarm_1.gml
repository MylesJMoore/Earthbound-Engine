if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    active = 1
    visible = !backfire
    var sound;
    switch type {
        case 0:
            sound = sndBrainshockA;
            break;
        case 1:
            sound = sndBrainshockO;
            break;
    }
    audio_play_sound(sound,0,0)
    alarm[2] = 2
}

