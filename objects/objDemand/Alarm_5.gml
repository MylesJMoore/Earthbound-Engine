if instance_exists(objStatDownFx) or instance_exists(objBattleMsg) {
    alarm[5] = 1
} else {
    with instance_create(global.target[global._pl].x,global.target[global._pl].y,objFreezeFx) {
        type = 0
        backfire = 0
    }
    alarm[6] = 1
}

