if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    with instance_create(0,0,objEnShieldDamage) { backfire = objEnShield.backfire; type = objEnShield.type; kind = objEnShield.kind }
    alarm[11] = 1
}

