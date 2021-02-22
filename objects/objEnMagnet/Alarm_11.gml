if instance_exists(objBattleMsg) or instance_exists(objEnMagnetDamage){
    alarm[11] = 1
} else {
    with objTurnMaster { event_perform(ev_other,ev_user0) }
    instance_destroy()
}

