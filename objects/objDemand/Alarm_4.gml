if instance_exists(objStatDownFx) or instance_exists(objBattleMsg) {
    alarm[4] = 1
} else {
    global._pl = 2
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0
    a.str[0] = "All of a sudden, "+global.s_name[2] + " tried PK Freeze "+"["+"!";
    global.target[2] = global.target[1]
    freeze_damage()

    alarm[5] = 1
}

