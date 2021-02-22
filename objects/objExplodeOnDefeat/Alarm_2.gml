if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    instance_create(0,0,objExplosionDamage)
    instance_destroy()
}

