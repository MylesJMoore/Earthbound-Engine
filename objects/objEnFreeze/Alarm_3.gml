if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    with instance_create(0,0,objEnFreezeDamage) { backfire = objEnFreeze.backfire; type = objEnFreeze.type }
    alarm[11] = 1
}

