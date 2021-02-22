if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    if global.s_strange[global._pl] and random(100)<50 {
        backfire = 1
    } 
    with instance_create(0,0,objFireFx) {
        type = objPKFire.type
        backfire = objPKFire.backfire
    }
    if !backfire {
        alarm[2] = 1
    } else {
        alarm[3] = 1 
    }
}

