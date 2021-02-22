if instance_exists(objBattleMsg) {
    alarm[11] = 1
} else {
    with objTurnMaster { event_perform(ev_other,ev_user0) }
    with objVarDamage { instance_destroy() }
    instance_destroy()
}

