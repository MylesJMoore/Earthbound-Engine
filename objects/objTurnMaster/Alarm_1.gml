/// @description Giving everyone their turns
//Player actions are at the very end of objStatusMaster.
if instance_exists(objBattleKiller) {
    alarm[1] = 1
} else {
    var next_turn;
    next_turn = ds_priority_delete_max(turn_order); 
    switch next_turn {
        case "player1":
            if !global.dead[1] {
                with instance_create(0,0,objStatusMaster) { pl = 1; }
            } else {
                event_perform(ev_other,ev_user0)
            }
            break;
        case "player2":
            if !global.dead[2] {
                with instance_create(0,0,objStatusMaster) { pl = 2; }
            } else {
                event_perform(ev_other,ev_user0)
            }
            break;
        case "player3":
            if !global.dead[3] {
                with instance_create(0,0,objStatusMaster) { pl = 3; }
            } else {
                event_perform(ev_other,ev_user0)
            }
            break;
        case "player4":
            if !global.dead[4] {
                with instance_create(0,0,objStatusMaster) { pl = 4; }
            } else {
                event_perform(ev_other,ev_user0)
            }
            break;
        case "enemy1":
            if global.enemy[1] != 0 {
                instance_create(0,0,objEnStatusMaster)
                enmy = 1
            } else {
                event_perform(ev_other,ev_user0)
            }
            break;
        case "enemy2":
            if global.enemy[2] != 0 {
                instance_create(0,0,objEnStatusMaster)
                enmy = 2
            } else {
                event_perform(ev_other,ev_user0)
            }
            break;
        case "enemy3":
            if global.enemy[3] != 0 {
                instance_create(0,0,objEnStatusMaster)
                enmy = 3
            } else {
                event_perform(ev_other,ev_user0)
            }
            break;
        case "enemy4":
            if global.enemy[4] != 0 {
                instance_create(0,0,objEnStatusMaster)
                enmy = 4
            } else {
                event_perform(ev_other,ev_user0)
            }
            break;
        case "enemy5":
            if global.enemy[5] != 0 {
                instance_create(0,0,objEnStatusMaster)
                enmy = 5
            } else {
                event_perform(ev_other,ev_user0)
            }
            break;
        case "npc":
            with objInBattleNPC { event_perform(ev_other,ev_user0); } 
            break;
        default:
            event_perform(ev_other,ev_user0)
            break;
    }
}

