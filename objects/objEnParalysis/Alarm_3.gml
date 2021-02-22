if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    with instance_create(0,0,objEnParalysisDamage) { backfire = objEnParalysis.backfire; type = objEnParalysis.type }
    alarm[11] = 1
}

