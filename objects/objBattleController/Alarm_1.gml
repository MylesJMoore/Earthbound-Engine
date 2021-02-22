/// @description Give control to player or enemy if battle type = 2
if !instance_exists(objBattleMsg) {
    if global.battle_type = 2 {
        act[1] = "none"; 
        act[2] = "none"; 
        act[3] = "none"; 
        act[4] = "none"; 
        with objTurnMaster { event_user(2) }
        //objTurnMaster.alarm[1] = 1; 
        turn = 1; 
        in_battle = 1;
    } else {
        in_battle = 0;
    }
    ok = 1;
} else {
    alarm[1] = 1
}

