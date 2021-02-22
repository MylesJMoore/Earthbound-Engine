if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    with instance_create(0,0,objEnHypnosisDamage) { backfire = objEnHypnosis.backfire; type = objEnHypnosis.type }
    alarm[11] = 1
}

