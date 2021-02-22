water = 0
can_chase = 1

if distance_to_object(objOwEnemyBlink) < 108 and !instance_exists(objBattleSwirl) {
    instance_destroy()
}

