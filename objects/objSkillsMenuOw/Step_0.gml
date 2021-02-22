/// @description Keyboard controls
if ok {
    if keyboard_check_pressed(global.kb_q) {
        if mode !=2 {
            audio_play_sound(sndselect,0,0)    
            switch global.pl_count {
                case 0: 
                case 1:
                    cursor_x2 = x1
                    global.current_inv = 0
                    break;
                case 2:
                    if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 1 }
                    else { cursor_x2 = x1; global.current_inv = 0 }
                    break;
                case 3:
                    if cursor_x2 = x1 { cursor_x2 = x3; global.current_inv = 2 }
                    else if cursor_x2 = x3 { cursor_x2 = x2; global.current_inv = 1 }
                    else { cursor_x2 = x1; global.current_inv = 0 }
                    break;
                case 4:
                    if cursor_x2 = x1 { cursor_x2 = x4; global.current_inv = 3 }
                    else if cursor_x2 = x2 { cursor_x2 = x1; global.current_inv = 0 }
                    else if cursor_x2 = x3 { cursor_x2 = x2; global.current_inv = 1 }
                    else if cursor_x2 = x4 { cursor_x2 = x3; global.current_inv = 2 }
                    break;
            }
            mode = 0
            psimode = 0
            cursor_x = _x[1]
            cursor_y = _y[1]
            event_user(0)
        }
    } else if keyboard_check_pressed(global.kb_w) {
        if mode !=2 {
            audio_play_sound(sndselect,0,0)
            switch global.pl_count {
                case 0: 
                case 1:
                    cursor_x2 = x1
                    global.current_inv = 0
                    break;
                case 2:
                    if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 1 }
                    else { cursor_x2 = x1; global.current_inv = 0 }
                    break;
                case 3:
                    if cursor_x2 = x2 { cursor_x2 = x3; global.current_inv = 2 }
                    else if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 1 }
                    else { cursor_x2 = x1; global.current_inv = 0 }
                    break;
                case 4:
                    if cursor_x2 = x3 { cursor_x2 = x4; global.current_inv = 3 }
                    else if cursor_x2 = x4 { cursor_x2 = x1; global.current_inv = 0 }
                    else if cursor_x2 = x1 { cursor_x2 = x2; global.current_inv = 1 }
                    else if cursor_x2 = x2 { cursor_x2 = x3; global.current_inv = 2 }
                    break;
            }
            mode = 0
            psimode = 0
            cursor_x = _x[1]
            cursor_y = _y[1]
            event_user(0)
        }
    } else if keyboard_check_pressed(global.kb_back) {
        audio_play_sound(sndback,0,0)
        if mode = 0 {
            with objInGameMenu {alarm[0] = 1}
            global.current_inv = 0
            audio_play_sound(sndback,0,0)
            instance_destroy()
        } else if mode = 1 {
            mode = 0
            cursor_x = _x[1]
            if global.psiuser[global.current_inv+1] {
                cursor_y = _y[psimode+1]
            } else {
                cursor_y = _y[(psimode == 3)+1]
            }
        } else {
            mode = 1
            cursor_x = _x[3]
            cursor_y = _y[1]
        }
    } else if keyboard_check_pressed(global.kb_choose) {
        if num !=0 {
            if mode = 0 {
                ok = 0
                alarm[0] = 1
                mode = 1
                if global.psiuser[global.current_inv+1] or psimode = 3 {
                    cursor_x = _x[3]
                    cursor_y = _y[1]
                } else {
                    cursor_x = _x[1]+64
                    cursor_y = _y[1]
                }
                
                audio_play_sound(sndchoose,0,0)
            } else if mode = 1 and global.psiuser[global.current_inv+1] {
                if skillcost[num] <= global.s_pp[global.current_inv+1] and skillname[num] != "" and skilllearnt[num] and !global.dead[global.current_inv+1]
                and skillact[num] = "lifeup_a" or skillact[num] = "lifeup_b" or skillact[num] = "lifeup_g" or skillact[num] = "healing_a" or skillact[num] = "healing_b" or skillact[num] = "healing_g" or skillact[num] = "healing_o" {
                    //act[objBattleController._turn] = skillact[num];
                    //global.remove_pp[objBattleController._turn] = skillcost[num];
                    audio_play_sound(sndchoose,0,0)
                    if skilltarget[num] = 0 {
                        if skillact[num] = "lifeup_a" { lifeup = lifeup_effect(0) ; type = 0 }
                        else if skillact[num] = "lifeup_b" { lifeup = lifeup_effect(1); type = 0 }
                        else if skillact[num] = "lifeup_g" { lifeup = lifeup_effect(2); type = 0 }
                        else if skillact[num] = "healing_a" or skillact[num] = "healing_b" or skillact[num] = "healing_g" or skillact[num] = "healing_o" { type = 1 }
                        ok = 0
                        alarm[0] = 1
                        cursor_x = _x[3]
                        cursor_y = _y[1]
                        mode = 2
                    } else if skilltarget[num] = 1 {
                        global.s_pp[global.current_inv+1] -= skillcost[num]
                        if skillact[num] = "lifeup_o" { lifeup = lifeup_effect(3)}
                        ok = 0
                        audio_play_sound(sndppsi,0,0)
                        message = "@ " + global.s_name[global.current_inv+1] + " tried#   "+skillname[num]+" "+skillletter[num]+"!"
                        alarm[11] = 40
                    }
                } else {
                    audio_play_sound(snderror,0,0)
                }
            } else {
                if global.psiuser[global.current_inv+1] {
                    if cursor_y = _y[1] {
                        use = 1;
                    } else if cursor_y = _y[2] {
                        use = 2;
                    } else if cursor_y = _y[3] {
                        use = 3;
                    } else if cursor_y = _y[4] {
                        use = 4;
                    }
                    global.s_pp[global.current_inv+1] -= skillcost[num]
                    audio_play_sound(sndppsi,0,0)
                    message = "@ " + global.s_name[global.current_inv+1] + " tried#   "+skillname[num]+" "+skillletter[num]+"!"
                    ok = 0
                    alarm[10] = 40
                }
            }
        }
    } else if keyboard_check_pressed(vk_left) {
        audio_play_sound(sndselect,0,0)
        if mode = 1 {
            if global.psiuser[global.current_inv+1] or psimode = 3 {
                if cursor_x = _x[4] {
                    cursor_x = _x[3]
                } else if cursor_x = _x[5] {
                    cursor_x = _x[4]
                } else if cursor_x = _x[6] {
                    cursor_x = _x[5]
                } else if cursor_x = _x[3] {
                    cursor_x = _x[6]
                }
            } else {
                if cursor_x = _x[1]+64 {
                    cursor_x = _x[2]+72
                } else {
                    cursor_x = _x[1]+64
                }
            }
        }
    } else if keyboard_check_pressed(vk_up) {
        audio_play_sound(sndselect2,0,0)
        if mode = 0 {
            if global.psiuser[global.current_inv+1] {
                if cursor_y = _y[1] {
                    cursor_y = _y[4]; psimode = 3;
                } else if cursor_y = _y[2] {
                    cursor_y = _y[1]; psimode = 0; 
                } else if cursor_y = _y[3] {
                    cursor_y = _y[2]; psimode = 1;
                } else if cursor_y = _y[4] {
                    cursor_y = _y[3]; psimode = 2;
                }
            } else {
                if cursor_y = _y[1] {
                    cursor_y = _y[2]; psimode = 3;
                } else if cursor_y = _y[2] {
                    cursor_y = _y[1]; psimode = 0; 
                } 
            }
        } else if mode = 1 {
            if global.psiuser[global.current_inv+1] or psimode = 3 {
                if cursor_y = _y[1] {
                    cursor_y = _y[4];
                } else if cursor_y = _y[2] {
                    cursor_y = _y[1];
                } else if cursor_y = _y[3] {
                    cursor_y = _y[2];
                } else if cursor_y = _y[4] {
                    cursor_y = _y[3];
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
            switch global.pl_count {
                case 2:
                    if cursor_y = _y[1] {
                        cursor_y = _y[2];
                    } else if cursor_y = _y[2] {
                        cursor_y = _y[1];
                    }
                    break;
                case 3:
                    if cursor_y = _y[1] {
                        cursor_y = _y[3];
                    } else if cursor_y = _y[2] {
                        cursor_y = _y[1];
                    } else if cursor_y = _y[3] {
                        cursor_y = _y[2];
                    }
                    break;
                case 4:
                    if cursor_y = _y[1] {
                        cursor_y = _y[4];
                    } else if cursor_y = _y[2] {
                        cursor_y = _y[1];
                    } else if cursor_y = _y[3] {
                        cursor_y = _y[2];
                    } else if cursor_y = _y[4] {
                        cursor_y = _y[3];
                    }
                    break;
            }
        }
    } else if keyboard_check_pressed(vk_right) {
        audio_play_sound(sndselect,0,0)
        if mode = 1 {
            if global.psiuser[global.current_inv+1] or psimode = 3 {
                if cursor_x = _x[3] {
                    cursor_x = _x[4]
                } else if cursor_x = _x[4] {
                    cursor_x = _x[5]
                } else if cursor_x = _x[5] {
                    cursor_x = _x[6]
                } else if cursor_x = _x[6] {
                    cursor_x = _x[3]
                }
            } else {
                if cursor_x = _x[1]+64 {
                    cursor_x = _x[2]+72
                } else {
                    cursor_x = _x[1]+64
                }
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
                    cursor_y = _y[4]; psimode = 3;
                } else if cursor_y = _y[4] {
                    cursor_y = _y[1]; psimode = 0;
                }
            } else {
                if cursor_y = _y[1] {
                    cursor_y = _y[2]; psimode = 3;
                } else if cursor_y = _y[2] {
                    cursor_y = _y[1]; psimode = 0;
                }
            }
        } else if mode = 1 {
            if global.psiuser[global.current_inv+1] or psimode = 3{
                if cursor_y = _y[1] {
                    cursor_y = _y[2];
                } else if cursor_y = _y[2] {
                    cursor_y = _y[3];
                } else if cursor_y = _y[3] {
                    cursor_y = _y[4];
                } else if cursor_y = _y[4] {
                    cursor_y = _y[1];
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
            switch global.pl_count {
                case 2:
                    if cursor_y = _y[1] {
                        cursor_y = _y[2];
                    } else if cursor_y = _y[2] {
                        cursor_y = _y[1];
                    }
                    break;
                case 3:
                    if cursor_y = _y[1] {
                        cursor_y = _y[2];
                    } else if cursor_y = _y[2] {
                        cursor_y = _y[3];
                    } else if cursor_y = _y[3] {
                        cursor_y = _y[1];
                    }
                    break;
                case 4:
                    if cursor_y = _y[1] {
                        cursor_y = _y[2];
                    } else if cursor_y = _y[2] {
                        cursor_y = _y[3];
                    } else if cursor_y = _y[3] {
                        cursor_y = _y[4];
                    } else if cursor_y = _y[4] {
                        cursor_y = _y[1];
                    }
                    break;
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
    if global.psiuser[global.current_inv+1] {
        if cursor_x = _x[3] {
                num = 1+16*psimode+4*(cursor_y = _y[2])+8*(cursor_y = _y[3])+12*(cursor_y = _y[4]);
        } else if cursor_x = _x[4] {
                num = 2+16*psimode+4*(cursor_y = _y[2])+8*(cursor_y = _y[3])+12*(cursor_y = _y[4]);
        } else if cursor_x = _x[5] {
                num = 3+16*psimode+4*(cursor_y = _y[2])+8*(cursor_y = _y[3])+12*(cursor_y = _y[4]);
        } else if cursor_x = _x[6] {
                num = 4+16*psimode+4*(cursor_y = _y[2])+8*(cursor_y = _y[3])+12*(cursor_y = _y[4]);
        }
    } else {
        if cursor_x = _x[1]+64 {
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
} 



