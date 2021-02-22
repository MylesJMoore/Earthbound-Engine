/// @description Continue
if !instance_exists(objBattleMsg) {
    if global.s_hp[pl] <= 0 and global.healthbar[pl].hp_actual < 1 {
        skip = 1
    }
    if skip or act[pl] = "none" {
        with objTurnMaster { event_perform(ev_other,ev_user0) }
    } else {
        player_actions();
    }
    instance_destroy()
} else { 
    alarm[11] = 1 
}

