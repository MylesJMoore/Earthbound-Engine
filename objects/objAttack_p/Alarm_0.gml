if instance_exists(objBattleMsg) {
    alarm[0] = 1
} else {
    if global.s_strange[global._pl] and random(100)<50 {
        if (global.s_crying[global._pl] and random(160)<90) or random(160)<10 {
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0;
            a.str[0] = "Just missed!"
            audio_play_sound(sndmiss,0,0)
        } else {
            instance_create(0,0,objDamageStrange)
        }
    } else {
        if (global.s_crying[global._pl] and random(160)<90) or random(160)<10 {
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0;
            a.str[0] = "Just missed!"
            audio_play_sound(sndmiss,0,0)
        } else {
            instance_create(0,0,objDamage)
        }
    }
    alarm[1] = 1
}

