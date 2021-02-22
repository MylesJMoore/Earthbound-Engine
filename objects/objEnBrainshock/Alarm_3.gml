if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    with instance_create(0,0,objEnBrainshockDamage) { backfire = objEnBrainshock.backfire; type = objEnBrainshock.type }
    alarm[11] = 1
}

