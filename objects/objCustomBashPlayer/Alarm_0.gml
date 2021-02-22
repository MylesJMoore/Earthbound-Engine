if instance_exists(objBattleMsg) {
    alarm[0] = 1
} else {
    if global.s_strange[global._pl] and random(100)<50 {
        alarm[2] = 1
        backfire = 1
    } else {
        alarm[1] = 1
    }
}

