/// @description  Runaway result
if !instance_exists(objBattleMsg) {
    if runaway {
        stat_reset()
        instance_create(0,09,objFadeOutBattle)
    } else {
        //objTurnMaster.alarm[1] = 1; 
        with objTurnMaster { event_user(2) }
        turn = 1; 
        in_battle = 1;
        ok = 1;
    }
} else {
    alarm[3] = 1;
}

