if instance_exists(objBattleMsg) or instance_exists(objCustomDamage) or instance_exists(objEnCustomDamage){
    alarm[11] = 1
} else {
    with objTurnMaster { event_perform(ev_other,ev_user0) }
    with objVarDamage { instance_destroy() }
    instance_destroy()
}

