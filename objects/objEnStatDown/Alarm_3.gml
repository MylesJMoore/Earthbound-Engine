if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    if stat = 3 {
        with instance_create(0,0,objEnOffenseDefenseDown) { backfire = objEnStatDown.backfire; type = objEnStatDown.type; }
    } else {
        with instance_create(0,0,objEnStatDownDamage) { backfire = objEnStatDown.backfire; type = objEnStatDown.type; stat = objEnStatDown.stat; _stat = objEnStatDown._stat }
    }
    alarm[11] = 1
}

