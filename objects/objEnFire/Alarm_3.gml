if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    with instance_create(0,0,objEnFireDamage) { backfire = objEnFire.backfire; type = objEnFire.type }
    alarm[11] = 1
}

