if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    active = 1
    visible = !backfire
    var sound;
    switch type {
        case 0:
            sound = sndfreezeA;
            break;
        case 1:
            sound = sndfreezeA;
            break;
        case 2:
            sound = sndfreezeG;
            break;
        case 3:
            sound = sndfreezeO;
            break;
    }
    audio_play_sound(sound,0,0)
    alarm[2] = 2
}

