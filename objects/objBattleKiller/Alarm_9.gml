/// @description The battle ends the moment the player dies, else turns start again
if instance_exists(objBattleMsg) {
    alarm[9] = 1
    exit
} else {
    var d = 0;
    switch global.pl_count {
        case 1:
            if global.dead[1] {
                d = 1
            }
            break;
        case 2:
            if global.dead[1] and global.dead[2]{
                d = 1
            }
            break;
        case 3:
            if global.dead[1] and global.dead[2] and global.dead[3] {
                d = 1
            }
            break;
        case 4:
            if global.dead[1] and global.dead[2] and global.dead[3] and global.dead[4] {
                d = 1
            }
            break;
    }
        
    if d {
        with instance_create(0,0,objBattleMsg) {
            strno = 0;
            str[0] = global.s_name[1] + " lost the battle..."
        }
        audio_stop_all()
        play_music(bgmBadDream, 1)
        instance_create(0,0,objFadeToWhite)
        with objPlayer { instance_destroy() }
    } else {
        if !first_turn { with objTurnMaster { event_perform(ev_other,ev_user1) } }
        else { objTurnMaster.alarm[1] = 1; }
        instance_destroy()
    }
}

