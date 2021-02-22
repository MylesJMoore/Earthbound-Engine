if instance_exists(objBattleMsg) {
    alarm[0] = 1
} else {
    with objTurnMaster { event_perform(ev_other,ev_user0) }
    instance_destroy()
}

