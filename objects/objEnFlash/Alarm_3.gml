if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    with instance_create(0,0,objEnFlashDamage) { backfire = objEnFlash.backfire; type = objEnFlash.type }
    alarm[11] = 1
}

