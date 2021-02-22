if instance_exists(objBattleMsg) {
    alarm[0] = 1
} else {
    if (global.enemy[enmy].crying and random(160)<90) or random(160)<10 {
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0;
        a.str[0] = "Just missed!"
        audio_play_sound(sndmiss,0,0)
        alarm[11] = 1
    } else {
        if global.enemy[enmy].strange and random(100)<50 {
            alarm[2] = 1
        } else {
            alarm[1] = 1
        }
    }
}

