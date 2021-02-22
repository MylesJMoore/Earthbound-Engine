if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    if global.s_strange[global._pl] and random(100)<50 {
        backfire = 1
    } 
    
    with instance_create(global.target[global._pl].x,global.target[global._pl].y,objFreezeFx) {
        type = objPKFreeze.type
        backfire = objPKFreeze.backfire
    }
    alarm[2] = 1
}

