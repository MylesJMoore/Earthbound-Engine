if !instance_exists(objBattleMsg) {
    if skip {
        with objTurnMaster { event_perform(ev_other,ev_user0) }
    } else {
        //Enemy actions go here.
        with global.enemy[enmy] { alarm[1] = 2; event_perform(ev_other,ev_user0); } 
    }
} else { 
    alarm[11] = 1 
}

