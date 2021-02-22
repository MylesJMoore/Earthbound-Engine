if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    with instance_create(0,0,objEnMagnetDamage) { backfire = objEnMagnet.backfire; type = objEnMagnet.type }
    alarm[11] = 1
}

