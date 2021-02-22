if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    active = 1
    visible = !backfire
    var sound;
    switch type {
        case 0:
        case 4:
            sound = sndflashA;
            break;
        case 1:
            sound = sndflashA;
            break;
        case 2:
            sound = sndflashG;
            break;
        case 3:
            sound = sndflashO;
            break;
    }
    audio_play_sound(sound,0,0)
    alarm[2] = 2
}

