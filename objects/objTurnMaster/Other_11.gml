/// @description  What should I do when a turn ends?
turn ++
global.custom_msg = 0
if !ds_priority_empty(turn_order) {
    write_line("Turn "+string(turn-1)+" ended")
    alarm[1] = 1
} else {
    // What should I do when all turns end?
    write_line("All turns ended")
    write_line("---------------")
    global.battle_type = 0;
    global.remove_pp[1] = 0;
    global.remove_pp[2] = 0;
    global.remove_pp[3] = 0;
    global.remove_pp[4] = 0;
    ds_priority_destroy(turn_order);
    //ds_list_shuffle(turn_order);
    turn = 0;
    with objBattleController { event_perform(ev_other,ev_user0) }
}

