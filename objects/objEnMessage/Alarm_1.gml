if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    if endturn { with objTurnMaster { event_perform(ev_other,ev_user0) } }
    instance_destroy()
}

