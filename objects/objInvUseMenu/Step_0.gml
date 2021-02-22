/// @description Keyboard controls
if ok {
    if (keyboard_check_pressed(vk_left)) {
        if mode = 2 {
            audio_play_sound(sndselect,0,0)
            if cursor_x = _x[3] { cursor_x = _x[4] } else { cursor_x = _x[3] }
        }
    } else if (keyboard_check_pressed(vk_right)){
        if mode = 2 {
            audio_play_sound(sndselect,0,0)
            if cursor_x = _x[3] { cursor_x = _x[4] } else { cursor_x = _x[3] }
        }
    } else if (keyboard_check_pressed(vk_down)){
        audio_play_sound(sndselect2,0,0)
        switch mode {
            case 0:
                if cursor_y = _y[1] { cursor_y = _y[2] }
                else if cursor_y = _y[2] { cursor_y = _y[0] }
                else if cursor_y = _y[0] { cursor_y = _y[1] } 
                break;
            case 1:
            case 3:
                switch global.pl_count {
                    case 2:
                        if cursor_y = _y[3]+1 { cursor_y = _y[4]+1; use = 2 }
                        else { cursor_y = _y[3]+1; use = 1 } 
                        break;
                    case 3:
                        if cursor_y = _y[3]+1 { cursor_y = _y[4]+1; use = 2 }
                        else if cursor_y = _y[4]+1 { cursor_y = _y[5]+3; use = 3 }
                        else { cursor_y = _y[3]+1; use = 1 } 
                        break;
                    case 4:
                        if cursor_y = _y[3]+1 { cursor_y = _y[4]+1; use = 2 }
                        else if cursor_y = _y[4]+1 { cursor_y = _y[5]+3; use = 3 }
                        else if cursor_y = _y[5]+3 { cursor_y = _y[7]; use = 4 }
                        else if cursor_y = _y[7] { cursor_y = _y[3]+1; use = 1 }
                        break;
                }
                break;
        }
    } else if (keyboard_check_pressed(vk_up)){
        audio_play_sound(sndselect2,0,0)
        switch mode {
            case 0:
                if cursor_y = _y[1] { cursor_y = _y[0] }
                else if cursor_y = _y[2] { cursor_y = _y[1] }
                else if cursor_y = _y[0] { cursor_y = _y[2] } 
                break;
            case 1:
            case 3:
                switch global.pl_count {
                    case 2:
                        if cursor_y = _y[3]+1 { cursor_y = _y[4]+1; use = 2 }
                        else { cursor_y = _y[3]+1; use = 1 } 
                        break;
                    case 3:
                        if cursor_y = _y[3]+1 { cursor_y = _y[5]+3; use = 3 }
                        else if cursor_y = _y[4]+1 { cursor_y = _y[3]+1; use = 1 }
                        else { cursor_y = _y[4]+1; use = 2 } 
                        break;
                    case 4:
                        if cursor_y = _y[3]+1 { cursor_y = _y[7]; use = 4 }
                        else if cursor_y = _y[4]+1 { cursor_y = _y[3]+1; use = 1 }
                        else if cursor_y = _y[5]+3 { cursor_y = _y[4]+1; use = 2 }
                        else if cursor_y = _y[7] { cursor_y = _y[5]+3; use = 3 }
                        break;
                }
                break;
        }
    } else if (keyboard_check_pressed(global.kb_choose)){
        ok = 0
        audio_play_sound(sndchoose,0,0)
        
        switch mode {
            case 0:
                if cursor_y = _y[1] {
                    if !global.dead[global.current_inv+1] {
                        if global.item[num,10] = 0 {
                            mode = 1
                            alarm[0] = 1
                            use = 1
                            cursor_x = _x[2]
                            cursor_y = _y[3]+1
                        } else {
                            switch global.item[num,3]{
                                case "item_lifeup_a_all":
                                    lifeup = irandom_range(74,126);
                                    alarm[2] = 1
                                    break;
                                case "item_lifeup_b_all":
                                    lifeup = irandom_range(224,376);
                                    alarm[2] = 1
                                    break;
                                case "item_lifeup_g_all":
                                    lifeup = 1000;
                                    alarm[2] = 1
                                    break;
                                case "item_lifeup_o":
                                    lifeup = irandom_range(299,501);
                                    alarm[2] = 1
                                    break;
                                case "item_lifeup_custom_all":
                                    lifeup = global.item[num,21];
                                    alarm[2] = 1
                                    break;
                                case "item_ppup_all":
                                    lifeup = global.item[num,22];
                                    alarm[3] = 1
                                    break;
                                default:
                                    message = "@ "+"This item can't be used here."
                                    alarm[0] = 60
                                    break;
                            }
                        }
                    } else {
                        message = "@ "+global.s_name[global.current_inv+1] + " is unconscious and can't use items!"
                        alarm[0] = 60
                    }
                } else if cursor_y = _y[2] {
                    mode = 3
                    write_line("giving")
                    alarm[0] = 1
                    use = 1
                    cursor_x = _x[2]
                    cursor_y = _y[3]+1
                } else if cursor_y = _y[0] {
                    if global.item[num,18] = 0 {
                        message = "@ "+"Please don't do that."
                        alarm[0] = 40
                    } else {
                        mode = 2
                        alarm[0] = 1
                        message = "@ "+"Are you sure you want to drop this?"+"##             "+"No"+"              "+"Yes"
                        cursor_x = _x[3]
                        cursor_y = _y[6]
                    }
                }
                break;
            case 1:
                switch global.item[num,3] {
                    case "item_lifeup_a":
                        lifeup = irandom_range(74,126);
                        event_perform(ev_other,ev_user0)
                        break;
                    case "item_lifeup_b":
                        lifeup = irandom_range(224,376);
                        event_perform(ev_other,ev_user0)
                        break;
                    case "item_lifeup_g":
                        lifeup = 1000;
                        event_perform(ev_other,ev_user0)
                        break;
                    case "item_lifeup_o_one":
                        lifeup = irandom_range(299,501);
                        event_perform(ev_other,ev_user0)
                        break;
                    case "item_lifeup_custom":
                        lifeup = global.item[num,21];
                        event_perform(ev_other,ev_user0)
                        break;
                    case "item_ppup":
                        lifeup = global.item[num,22];
                        event_perform(ev_other,ev_user1)
                        break;
                    case "item_healing":
                        event_perform(ev_other,ev_user2)
                        break;
                }
                break;
            case 2:
                alarm[0] = 1
                if cursor_x = _x[4] {
                    del_item(num_val)
                    write_line("Current inv is "+string(global.current_inv))
                    //Dealing with equipment
                    if !item_exists(global.current_inv,global.weap_equip[global.current_inv+1]) {
                        write_line("no weapon")
                        global.weap_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    if !item_exists(global.current_inv,global.body_equip[global.current_inv+1]) {
                        global.body_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    if !item_exists(global.current_inv,global.arm_equip[global.current_inv+1]) {
                        global.arm_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    if !item_exists(global.current_inv,global.other_equip[global.current_inv+1]) {
                        global.other_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    with obj_inv { event_perform(ev_other,ev_user0) } 
                    with obj_inv {alarm[0] = 1}
                    instance_destroy()
                } else {
                    cursor_x = _x[1]
                    cursor_y = _y[2]
                    mode = 0
                }
                break;
            case 3:
                alarm[0] = 1
                if add_item(num,use-1) != -1 {
                    del_item(num_val)
                    write_line("Current inv is "+string(global.current_inv))
                    //Dealing with equipment
                    if !item_exists(global.current_inv,global.weap_equip[global.current_inv+1]) {
                        global.weap_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    if !item_exists(global.current_inv,global.body_equip[global.current_inv+1]) {
                        global.body_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    if !item_exists(global.current_inv,global.arm_equip[global.current_inv+1]) {
                        global.arm_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    if !item_exists(global.current_inv,global.other_equip[global.current_inv+1]) {
                        global.other_equip[global.current_inv+1] = 0
                        eqp_boosts(global.current_inv+1)
                    }
                    with obj_inv { event_perform(ev_other,ev_user0) } 
                    with obj_inv {alarm[0] = 1}
                    instance_destroy()
                } else {
                    message = "@ "+"There is no space left on#   "+global.s_name[use]+"'s inventory."
                    alarm[0] = 40
                }
                break;
        }
    } else if (keyboard_check_pressed(global.kb_back)){
        ok = 0
        audio_play_sound(sndback,0,0)
        switch mode {
            case 0:
                with obj_inv {alarm[0] = 1}
                instance_destroy()
                break;
            case 1:
            case 2:
            case 3:
                cursor_x = _x[1]-3
                cursor_y = _y[1]
                alarm[0] = 1
                mode = 0
                break;
        }
    }
}

///Magic cursor code

cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}

