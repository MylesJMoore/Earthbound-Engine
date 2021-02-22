/// @description Keyboard controls
if ok {
    if keyboard_check_pressed(global.kb_back) {
        audio_play_sound(sndback,0,0)
        if mode = 0 {
            with objBattleController { ok = 1 }
            instance_destroy();
        } else {
            mode = 0
            cursor_x = _x[1]
            cursor_y = _y[psimode+1]
        }
    } else if keyboard_check_pressed(global.kb_choose) {
        if num !=0 {
            if mode = 0 and global.psiuser[global.current_inv+1] {
                ok = 0
                alarm[0] = 1
                mode = 1
                cursor_x = _x[3]
                cursor_y = _y[1]
                audio_play_sound(sndchoose,0,0)
            } else {
                if skillcost[num] <= global.s_pp[objBattleController._turn] and skillname[num] != "" and skilllearnt[num] {
                    act[objBattleController._turn] = skillact[num];
                    global.remove_pp[objBattleController._turn] = skillcost[num];
                    audio_play_sound(sndchoose,0,0)
                    if skilltarget[num] = 0 {
                        instance_create(0,0,objPlayerSelector)
                        ok = 0;
                        exit;
                    } else if skilltarget[num] = 1 or skilltarget[num] = 3 {
                        if objBattleController._turn > global.pl_count-1 {
                            with objTurnMaster { event_user(2) }
                            turn = 1
                            with objBattleController { in_battle = 1; ok = 1; }
                        } else {
                            with objBattleController { ok = 1; _turn++; cursor_x = _x[1]; cursor_y = _y[1] }
                        }
                        instance_destroy();
                    } else if skilltarget[num] = 2 {
                        instance_create(0,0,objTargetSelector)
                        ok = 0;
                        exit;
                    } 
                } else {
                    audio_play_sound(snderror,0,0)
                }
            }
        }
    } else if keyboard_check_pressed(vk_left) {
        audio_play_sound(sndselect,0,0)
        if mode = 1 {
            if cursor_x = _x[4] {
            cursor_x = _x[3]
            } else if cursor_x = _x[5] {
            cursor_x = _x[4]
            } else if cursor_x = _x[6] {
            cursor_x = _x[5]
            } else if cursor_x = _x[3] {
            cursor_x = _x[6]
            }
        } else if mode = 0 and !global.psiuser[global.current_inv+1]{
            if cursor_x = _x[1] {
                cursor_x = _x[2]+32
            } else {
                cursor_x = _x[1]
            }
        }
    } else if keyboard_check_pressed(vk_up) {
        audio_play_sound(sndselect2,0,0)
        if mode = 0 {
            if global.psiuser[global.current_inv+1] {
                if cursor_y = _y[1] {
                    cursor_y = _y[3]; psimode = 2;
                } else if cursor_y = _y[2] {
                    cursor_y = _y[1]; psimode = 0; 
                } else if cursor_y = _y[3] {
                    cursor_y = _y[2]; psimode = 1;
                }
            } else {
                if cursor_y = _y[1] {
                    cursor_y = _y[5];
                } else if cursor_y = _y[2] {
                    cursor_y = _y[1];
                } else if cursor_y = _y[3] {
                    cursor_y = _y[2];
                } else if cursor_y = _y[4] {
                    cursor_y = _y[3];
                } else if cursor_y = _y[5] {
                    cursor_y = _y[4];
                }
            }
        } else {
            if cursor_y = _y[1] {
                cursor_y = _y[4];
            } else if cursor_y = _y[2] {
                cursor_y = _y[1];
            } else if cursor_y = _y[3] {
                cursor_y = _y[2];
            } else if cursor_y = _y[4] {
                cursor_y = _y[3];
            }
        }
    } else if keyboard_check_pressed(vk_right) {
        audio_play_sound(sndselect,0,0)
        if mode = 1 {
            if cursor_x = _x[3] {
            cursor_x = _x[4]
            } else if cursor_x = _x[4] {
            cursor_x = _x[5]
            } else if cursor_x = _x[5] {
            cursor_x = _x[6]
            } else if cursor_x = _x[6] {
            cursor_x = _x[3]
            }
        } else if mode = 0 and !global.psiuser[global.current_inv+1]{
            if cursor_x = _x[1] {
                cursor_x = _x[2]+32
            } else {
                cursor_x = _x[1]
            }
        }
    } else if keyboard_check_pressed(vk_down) {
        audio_play_sound(sndselect2,0,0)
        if mode = 0 {
            if global.psiuser[global.current_inv+1] {
                if cursor_y = _y[1] {
                    cursor_y = _y[2]; psimode = 1;
                } else if cursor_y = _y[2] {
                    cursor_y = _y[3]; psimode = 2;
                } else if cursor_y = _y[3] {
                    cursor_y = _y[1]; psimode = 0;
                }
            } else {
                if cursor_y = _y[1] {
                    cursor_y = _y[2];
                } else if cursor_y = _y[2] {
                    cursor_y = _y[3];
                } else if cursor_y = _y[3] {
                    cursor_y = _y[4];
                } else if cursor_y = _y[4] {
                    cursor_y = _y[5];
                } else if cursor_y = _y[5] {
                    cursor_y = _y[1];
                }
            }
        } else {
            if cursor_y = _y[1] {
                cursor_y = _y[2];
            } else if cursor_y = _y[2] {
                cursor_y = _y[3];
            } else if cursor_y = _y[3] {
                cursor_y = _y[4];
            } else if cursor_y = _y[4] {
                cursor_y = _y[1];
            }
        }
    }
}

cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}

if mode = 1 {
    if cursor_x = _x[3] {
            num = 1+16*psimode+4*(cursor_y = _y[2])+8*(cursor_y = _y[3])+12*(cursor_y = _y[4]);
    } else if cursor_x = _x[4] {
            num = 2+16*psimode+4*(cursor_y = _y[2])+8*(cursor_y = _y[3])+12*(cursor_y = _y[4]);
    } else if cursor_x = _x[5] {
            num = 3+16*psimode+4*(cursor_y = _y[2])+8*(cursor_y = _y[3])+12*(cursor_y = _y[4]);
    } else if cursor_x = _x[6] {
            num = 4+16*psimode+4*(cursor_y = _y[2])+8*(cursor_y = _y[3])+12*(cursor_y = _y[4]);
    }
} else if mode = 0 and !global.psiuser[global.current_inv+1] {
    if cursor_x = _x[1] {
        if cursor_y = _y[1] { num = 1 }
        else if cursor_y = _y[2] { num = 3 }
        else if cursor_y = _y[3] { num = 5 }
        else if cursor_y = _y[4] { num = 7 }
        else if cursor_y = _y[5] { num = 9 }
    } else {
        if cursor_y = _y[1] { num = 2 }
        else if cursor_y = _y[2] { num = 4 }
        else if cursor_y = _y[3] { num = 6 }
        else if cursor_y = _y[4] { num = 8 }
        else if cursor_y = _y[5] { num = 10 }
    }
}



visible = !(instance_exists(objTargetSelector) or instance_exists(objPlayerSelector))


