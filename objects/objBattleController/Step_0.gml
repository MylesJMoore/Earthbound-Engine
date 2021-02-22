if !in_battle {
    if (global.dead[1] or global.s_asleep[1] or global.s_solid[1]) and _turn = 1 {
        _turn = 2
    } else if (global.dead[2] or global.s_asleep[2] or global.s_solid[2]) and _turn = 2 {
        _turn = 3
    } else if (global.dead[3] or global.s_asleep[3] or global.s_solid[3]) and _turn = 3 {
        _turn = 4
    } else if (global.dead[4] or global.s_asleep[4] or global.s_solid[4]) and _turn = 4 {
        with objTargetSelector { instance_destroy() }
        with objPlayerSelector { instance_destroy() }
        with objSkillsMenu { instance_destroy() }
        with objBattleInv { instance_destroy() }
        with objTurnMaster { event_user(2) }
        turn = 1
        in_battle = 1;
        ok = 1; 
    }
    global.current_inv = _turn -1
}

cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}


if !in_battle {
    if !instance_exists(objPlayerSelector) {
        for (var i=1;i<global.pl_count+1;i++) {
            global.healthbar[i].y = global.healthbar[i].ystart
        }
        if !(global.dead[_turn] or global.s_asleep[_turn] or global.s_solid[_turn]) {
            global.healthbar[_turn].y -= 8
        }
    }
} 

///Keyboard controls
if !in_battle and ok and !(global.dead[_turn] or global.s_asleep[_turn] or global.s_solid[_turn]){
    if keyboard_check_pressed(global.kb_back) {
        switch _turn {
            case 2:
                if !global.dead[1] and !global.s_asleep[1] and !global.s_solid[1]{ 
                    _turn = 1; 
                }
                break;
            case 3:
                if !global.dead[2] and !global.s_asleep[2] and !global.s_solid[2]{ 
                    _turn = 2; 
                } else if !global.dead[1] and !global.s_asleep[1] and !global.s_solid[1]{
                    _turn = 1; 
                }
                break;
            case 4:
                if !global.dead[3] and !global.s_asleep[3] and !global.s_solid[3]{ 
                    _turn = 3; 
                } else if !global.dead[2] and !global.s_asleep[2] and !global.s_solid[2]{
                    _turn = 2; 
                } else if !global.dead[1] and !global.s_asleep[1] and !global.s_solid[1]{
                    _turn = 1; 
                }
                break;
        }
        cursor_x = _x[1]
        cursor_y = _y[1]
        audio_play_sound(sndback,0,0); 
    } else if keyboard_check_pressed(global.kb_choose) {
        audio_play_sound(sndchoose,0,0)
        if cursor_y = _y[1] {
            if cursor_x = _x[1] {
                //Bash
                if !no_bash[_turn] {
                    ok = 0;
                    act[_turn] = "bash";
                    instance_create(0,0,objTargetSelector);
                } else {
                    audio_play_sound(snderror,0,0)
                }
            } else if cursor_x = _x[2] {
                //Goods
                if !no_goods[_turn] {
                    ok = 0;
                    instance_create(16,0,objBattleInv);
                } else {
                    audio_play_sound(snderror,0,0)
                }
            } else if cursor_x = _x[3] {
                //Run Away
                if !no_run[_turn] {
                    in_battle = 1;
                    msg = "";
                    act[1] = "none"; 
                    act[2] = "none"; 
                    act[3] = "none"; 
                    act[4] = "none"; 
                    ok = 0; 
                    alarm[2] = 1;
                    cursor_x = _x[1]
                    cursor_y = _y[1]
                } else {
                    audio_play_sound(snderror,0,0)
                }
            } 
        } else {
            if cursor_x = _x[2] {
                //Skills
                if !no_psi[_turn] {
                    ok = 0;
                    instance_create(16,0,objSkillsMenu);
                } else {
                    audio_play_sound(snderror,0,0)
                }
            } else if cursor_x = _x[1] {
                //Guard
                if !no_guard[_turn] {
                    act[_turn] = "guard";
                    if _turn > global.pl_count-1 {
                        with objTurnMaster { event_user(2) }
                        turn = 1;
                        in_battle = 1;
                    } else {
                        _turn++;
                    }
                    cursor_x = _x[1]
                    cursor_y = _y[1]
                } else {
                    audio_play_sound(snderror,0,0)
                }
            } else if cursor_x = _x[3] {
                //Special action
                if !no_special[_turn] {
                    if _turn = 1 {
                        ok = 0;
                        act[_turn] = "inspect";
                        instance_create(0,0,objTargetSelector);
                    }
                } else {
                    audio_play_sound(snderror,0,0)
                }
            }
        }
    } else if keyboard_check_pressed(vk_left) {
        if cursor_x = _x[1] {
            //if /*_turn !=1 or*/ cursor_y = _y[2] {
            //    cursor_x = _x[2]
            //} else {
                cursor_x = _x[3]
            //}
        } else if cursor_x = _x[2] {
            cursor_x = _x[1]
        } else if cursor_x = _x[3] {
            cursor_x = _x[2]
        }
        audio_play_sound(sndselect,0,0)
    } else if keyboard_check_pressed(vk_up) {
        if cursor_y = _y[1] {
            //if cursor_x != _x[3] {
                cursor_y = _y[2]
            //}
        } else if cursor_y = _y[2] {
            cursor_y = _y[1]
        }
        audio_play_sound(sndselect2,0,0)
    } else if keyboard_check_pressed(vk_right) {
        if cursor_x = _x[1] {
            cursor_x = _x[2]
        } else if cursor_x = _x[2] {
            //if /*_turn !=1 or*/ cursor_y = _y[2] {
            //    cursor_x = _x[1]
            //} else {
                cursor_x = _x[3]
            //}
        } else {
            cursor_x = _x[1]
        }
        audio_play_sound(sndselect,0,0)
    } else if keyboard_check_pressed(vk_down) {
        if cursor_y = _y[1] {
            //if cursor_x != _x[3] {
                cursor_y = _y[2]
            //}
        } else if cursor_y = _y[2] {
            cursor_y = _y[1]
        }
        audio_play_sound(sndselect2,0,0)
    }
}

/* */
///Button labels
// Bash
if !no_bash[_turn] {
    label_bash[1] = "0 Clean";
    label_bash[2] = "1 Bash";
    label_bash[3] = "2 Shoot";
    label_bash[4] = "1 Bash";
            
    if instance_exists(e[1]) {
        if e[1].e_name = "Don't Tread On Me" {
            label_bash[1] = "8 Tread";
        } else if e[1].e_name = "Patrolling Royal Guard" {
            label_bash[1] = ": Demand";
        }
    }
} else {
    label_bash[_turn] = "////";
}

//Guard
if !no_guard[_turn] {
    label_guard[_turn] = "3 Guard";
            
    if instance_exists(e[1]) {
        if e[1].e_name = "Don't Tread On Me" {
            label_guard[1] = "9 Don't tread";
        }
    }
} else {
    label_guard[_turn] = "////";
}

// Goods
if !no_goods[_turn] {
    label_goods[_turn] = iff(!no_goods[_turn],"4 Goods","////")
} else {
    label_goods[_turn] = "////";
}

// PSI or skills
if !no_psi[_turn] {
    label_psi[_turn] = iff(global.psiuser[_turn],"6 PSI","6 Skills")
} else {
    label_psi[_turn] = "////";
}

// Run
if !no_run[_turn] {
    label_run[_turn] = iff(!no_run[_turn],"5 Run Away","////")
} else {
    label_run[_turn] = "////";
}

// Special
if !no_special[_turn] {
    label_special[1] = "7 Inspect";
    label_special[2] = ". Trick";
    label_special[3] = "/ Not implemented";
    label_special[4] = "/ Not implemented";
} else {
    label_special[_turn] = "////";
}

/* */
/*  */
