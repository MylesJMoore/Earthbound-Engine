if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if global.enemy[enmy].strange and random(100)<25 {
        with instance_create(0,0,objBattleMsg) {
            str[0] = "But it didn't work very well.";
        }
        alarm[11] = 1
    } else {
        if random(200) < global.s_luck[tgt] {
            with instance_create(0,0,objBattleMsg) {
                str[0] = "But it had no effect.";
            }
            alarm[11] = 1
        } else {
            instance_create(0,0,objEnWakeUpDamage)
            instance_destroy()
        }
    }
}

