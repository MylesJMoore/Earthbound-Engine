if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    active = 1
    visible = !backfire
    if !notpsi {
        switch type {
            case 0:
                audio_play_sound(sndDefenseDownA,0,0)
                break;
            case 1:
                audio_play_sound(sndDefenseDownO,0,0)
                break;
        }
        alarm[2] = 2
    } else {
        alarm[3] = 1
    }
}

