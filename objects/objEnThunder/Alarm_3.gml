if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    with instance_create(0,0,objEnThunderDamage) { backfire = objEnThunder.backfire; type = objEnThunder.type; nohit = objEnThunder.nohit }
    rounds++
    active = 0
    img = 0
    alarm[1] = 1
}

