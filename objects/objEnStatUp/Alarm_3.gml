if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    with instance_create(0,0,objEnStatUpDamage) { backfire = objEnStatUp.backfire; type = objEnStatUp.type; stat = objEnStatUp.stat; _stat = objEnStatUp._stat }
    alarm[11] = 1
}

