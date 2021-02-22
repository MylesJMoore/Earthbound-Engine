/// @description Keyboard controls
if ok {
    if keyboard_check_pressed(global.kb_back) {
        if global.enemy[1] != 0 { global.enemy[1].visible = 1 }
        if global.enemy[2] != 0 { global.enemy[2].visible = 1 }
        if global.enemy[3] != 0 { global.enemy[3].visible = 1 }
        if global.enemy[4] != 0 { global.enemy[4].visible = 1 }
        if global.enemy[5] != 0 { global.enemy[5].visible = 1 }
        if instance_exists(objSkillsMenu) {
            with objSkillsMenu { alarm[0] = 1 }
        } else if instance_exists(objBattleInv) {
            with objBattleInv { alarm[0] = 1 }
        } else {
            with objBattleController { alarm[5] = 1 }
        }
        ok = 0
        audio_play_sound(sndback,0,0)
        instance_destroy();
    } else if keyboard_check_pressed(global.kb_choose) {
        if global.enemy[1] != 0 { global.enemy[1].visible = 1 }
        if global.enemy[2] != 0 { global.enemy[2].visible = 1 }
        if global.enemy[3] != 0 { global.enemy[3].visible = 1 }
        if global.enemy[4] != 0 { global.enemy[4].visible = 1 }
        if global.enemy[5] != 0 { global.enemy[5].visible = 1 }
        global.target[objBattleController._turn] = global.enemy[tgt];
        if objBattleController._turn > global.pl_count-1 {
            with objTurnMaster { event_user(2) }
            turn = 1
            with objBattleController { in_battle = 1; ok = 1; }
        } else {
            with objBattleController { ok = 1; _turn++; cursor_x = _x[1]; cursor_y = _y[1] }
        }
        with objBattleInv { instance_destroy() }
        with objSkillsMenu { instance_destroy() }
        ok = 0
        audio_play_sound(sndchoose,0,0)
        instance_destroy();
    } else if keyboard_check_pressed(vk_left) {
        if global.enemy[1] != 0 { global.enemy[1].visible = 1 }
        if global.enemy[2] != 0 { global.enemy[2].visible = 1 }
        if global.enemy[3] != 0 { global.enemy[3].visible = 1 }
        if global.enemy[4] != 0 { global.enemy[4].visible = 1 }
        if global.enemy[5] != 0 { global.enemy[5].visible = 1 }
        
        if global.en_count = 2 {
            if tgt = 1 and global.enemy[2] != 0 {
                tgt = 2
            } else if tgt = 2 and global.enemy[1] != 0 {
                tgt = 1
            } 
        } else if global.en_count = 3 {
            if tgt = 1 { if global.enemy[2] != 0 {tgt = 2} else if global.enemy[3] != 0  {tgt = 3} }
            else if tgt = 3 { if global.enemy[1] != 0 {tgt = 1} else if global.enemy[2] != 0  {tgt = 2} }
            else if tgt = 2 { if global.enemy[3] != 0 {tgt = 3} else if global.enemy[1] != 0  {tgt = 1} }
        } else if global.en_count = 4 {
            if tgt = 1 { if global.enemy[4] != 0 {tgt = 4} else if global.enemy[3] != 0 {tgt = 3} else if global.enemy[2] != 0 {tgt = 2} }
            else if tgt = 2 { if global.enemy[1] != 0 {tgt = 1} else if global.enemy[4] != 0 {tgt = 4} else if global.enemy[3] != 0 {tgt = 3} }
            else if tgt = 3 { if global.enemy[2] != 0 {tgt = 2} else if global.enemy[1] != 0 {tgt = 1} else if global.enemy[4] != 0 {tgt = 4} }
            else if tgt = 4 { if global.enemy[3] != 0 {tgt = 3} else if global.enemy[2] != 0 {tgt = 2} else if global.enemy[1] != 0 {tgt = 1} }
        } else if global.en_count = 5 {
        //      2       3
        //  4       1       5
            if tgt = 1 { if global.enemy[2] != 0 {tgt = 2} else if global.enemy[4] != 0 {tgt = 4} else if global.enemy[5] != 0 {tgt = 5} else if global.enemy[3] != 0 {tgt = 3} }
            else if tgt = 2 { if global.enemy[4] != 0 {tgt = 4} else if global.enemy[5] != 0 {tgt = 5} else if global.enemy[3] != 0 {tgt = 3} else if global.enemy[1] != 0 {tgt = 1} }
            else if tgt = 3 { if global.enemy[1] != 0 {tgt = 1} else if global.enemy[2] != 0 {tgt = 2} else if global.enemy[4] != 0 {tgt = 4} else if global.enemy[5] != 0 {tgt = 5} }
            else if tgt = 4 { if global.enemy[5] != 0 {tgt = 5} else if global.enemy[3] != 0 {tgt = 3} else if global.enemy[1] != 0 {tgt = 1} else if global.enemy[2] != 0 {tgt = 2} }
            else if tgt = 5 { if global.enemy[3] != 0 {tgt = 3} else if global.enemy[1] != 0 {tgt = 1} else if global.enemy[2] != 0 {tgt = 2} else if global.enemy[4] != 0 {tgt = 4} }
        }
    
        audio_play_sound(sndselect,0,0)
    } else if keyboard_check_pressed(vk_right) {
        if global.enemy[1] != 0 { global.enemy[1].visible = 1 }
        if global.enemy[2] != 0 { global.enemy[2].visible = 1 }
        if global.enemy[3] != 0 { global.enemy[3].visible = 1 }
        if global.enemy[4] != 0 { global.enemy[4].visible = 1 }
        if global.enemy[5] != 0 { global.enemy[5].visible = 1 }
    
        if global.en_count = 2 {
            if tgt = 1 and global.enemy[2] != 0 {
                tgt = 2
            } else if tgt = 2 and global.enemy[1] != 0 {
                tgt = 1
            } 
        } else if global.en_count = 3 {
            if tgt = 1 { if global.enemy[3] != 0 {tgt = 3} else if global.enemy[2] != 0  {tgt = 2} }
            else if tgt = 3 { if global.enemy[2] != 0 {tgt = 2} else if global.enemy[1] != 0  {tgt = 1} }
            else if tgt = 2 { if global.enemy[1] != 0 {tgt = 1} else if global.enemy[3] != 0  {tgt = 3} }
        } else if global.en_count = 4 {
            if tgt = 1 { if global.enemy[2] != 0 {tgt = 2} else if global.enemy[3] != 0 {tgt = 3} else if global.enemy[4] != 0 {tgt = 4} }
            else if tgt = 2 { if global.enemy[3] != 0 {tgt = 3} else if global.enemy[4] != 0 {tgt = 4} else if global.enemy[1] != 0 {tgt = 1} }
            else if tgt = 3 { if global.enemy[4] != 0 {tgt = 4} else if global.enemy[1] != 0 {tgt = 1} else if global.enemy[2] != 0 {tgt = 2} }
            else if tgt = 4 { if global.enemy[1] != 0 {tgt = 1} else if global.enemy[2] != 0 {tgt = 2} else if global.enemy[3] != 0 {tgt = 3} }
        } else if global.en_count = 5 {
        //      2       3
        //  4       1       5
            if tgt = 1 { if global.enemy[3] != 0 {tgt = 3} else if global.enemy[5] != 0 {tgt = 5} else if global.enemy[4] != 0 {tgt = 4} else if global.enemy[2] != 0 {tgt = 2} }
            else if tgt = 2 { if global.enemy[1] != 0 {tgt = 1} else if global.enemy[3] != 0 {tgt = 3} else if global.enemy[5] != 0 {tgt = 5} else if global.enemy[4] != 0 {tgt = 4} }
            else if tgt = 3 { if global.enemy[5] != 0 {tgt = 5} else if global.enemy[4] != 0 {tgt = 4} else if global.enemy[2] != 0 {tgt = 2} else if global.enemy[1] != 0 {tgt = 1} }
            else if tgt = 4 { if global.enemy[2] != 0 {tgt = 2} else if global.enemy[1] != 0 {tgt = 1} else if global.enemy[3] != 0 {tgt = 3} else if global.enemy[5] != 0 {tgt = 5} }
            else if tgt = 5 { if global.enemy[4] != 0 {tgt = 4} else if global.enemy[2] != 0 {tgt = 2} else if global.enemy[1] != 0 {tgt = 1} else if global.enemy[3] != 0 {tgt = 3} }
        }
    
        audio_play_sound(sndselect,0,0)
    } 
}

if ok {
    with global.enemy[tgt] {
        visible = abs(visible-1)
    }
}
//blink++
//if blink > 1 {blink = 0}

