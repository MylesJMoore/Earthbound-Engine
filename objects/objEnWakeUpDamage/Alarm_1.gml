if !instance_exists(objBattleMsg) {
    global.nohproll = 0;
    with objTurnMaster { event_perform(ev_other,ev_user0) }
    instance_destroy()
} else {
    alarm[1] = 1
}

