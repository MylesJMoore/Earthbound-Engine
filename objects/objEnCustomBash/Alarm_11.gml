if instance_exists(objBattleMsg) or instance_exists(objEnCustomDamage) {
    alarm[11] = 1
} else {
    if endturn {
        with objTurnMaster { 
            event_perform(ev_other,ev_user0) 
        }
    }
    instance_destroy()
}

