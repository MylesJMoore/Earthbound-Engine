/// @description  handle debug
if !global.debug { exit }

///Console
if active {
    if can_input {
        if string_length(keyboard_string) > 32 {
            keyboard_string = string_copy(keyboard_string, 1, 32);
        }
        
        if keyboard_check_pressed(global.kb_enter) {
            //Remove whitespace and standarise caps
            var trimmed = string_trim(keyboard_string)
            var lowered = string_lower(trimmed)
            var final_command = lowered
            var args = 0
            //Split string if spaces are found
            if string_pos(" ", lowered) != 0 {
                args = string_split(lowered," ") 
                final_command = ds_list_find_value(args,0)
            } else {
                args = ds_list_create()
            }
            write_line("MS) "+keyboard_string)
            //Execute the command
            switch final_command {
                case "":
                    break
                case "bg":
                    room = rmBgTest
                    break
                case "close":
                case "c":
                    event_perform(ev_keypress,vk_f12)
                    break
                case "debugroom":
                case "debug":
                case "d":
                    if room = rmDebugRoom {
                        room = room_prev
                    } else {
                        room_prev = room
                        room = rmDebugRoom 
                    }
                    break
                case "end":
                case "e":
                    game_end()
                    break
                case "ec":
                    write_line("Enemies will now "+iff(global.disable_enemy_chasing,"chase you.","never chase you."))
                    global.disable_enemy_chasing = !global.disable_enemy_chasing
                    break
                case "flag":
                case "f":
                    var flg = 0;
                    var flg_state = 0;
                    
                    if is_undefined(ds_list_find_value(args,1)) and is_undefined(ds_list_find_value(args,2)) {
                        write_line("Please specify a valid flag.")
                    } else if is_undefined(ds_list_find_value(args,2)) {
                        flg = real(ds_list_find_value(args,1))
                        if flg < 0 or flg > 500 {
                            write_line("Please specify a valid flag.")
                        } else {
                            write_line("Flag "+string(flg)+"'s state is <"+iff(is_string(get_flag(flg)),get_flag(flg),string(get_flag(flg)))+">.")
                        }
                    } else {
                        flg = real(ds_list_find_value(args,1))
                        flg_state = real(ds_list_find_value(args,2))
                        if flg < 0 or flg > 500 {
                            write_line("Please specify a valid flag.")
                        } else {
                            set_flag(flg,flg_state)
                        }   
                    }
                    break
                case "gender":
                case "g":
                    global.gender = !global.gender
                    write_line("Switched gender to "+iff(global.gender,"female","male")+".")
                    break
                case "hibikimustdie":
                case "hibiki":
                case "hbm":
                case "h":
                    write_line("Hibiki Must Die mode has been "+iff(hibiki_must_die,"deactivated.","activated."))
                    hibiki_must_die = !hibiki_must_die
                    break
                case "i":
                case "item":
                    if is_undefined(ds_list_find_value(args,1)) {
                        write_line("Please select a valid inventory ID. Valid choices: 0 - 4.")
                    } else {
                        if (ds_list_find_value(args,1) < 0 and ds_list_find_value(args,1) > 4) {
                            write_line("Please select a valid inventory ID. Valid choices: 0 - 4.")
                        } else {
                            if is_undefined(ds_list_find_value(args,2)) {
                                write_line("Please select a valid item ID.")
                            } else if (real(ds_list_find_value(args,2)) > 0 and real(ds_list_find_value(args,2)) < (array_height_2d(global.item))) {
                                add_item(real(ds_list_find_value(args,2)),real(ds_list_find_value(args,1)))
                            }
                        }
                    }
                    break
                case "kill":
                case "k":
                    var pl2kl = iff(is_undefined(ds_list_find_value(args,1)),p,real(ds_list_find_value(args,1)));
                    if !global.dead[pl2kl] {
                        global.s_hp[pl2kl] = 0
                        global.dead[pl2kl] = 1
                        write_line("Killed player "+string(pl2kl)+" <"+global.s_name[pl2kl]+">")
                    } else {
                        global.s_hp[pl2kl] = global.s_hpmax[pl2kl]
                        global.dead[pl2kl] = 0
                        write_line("Revived player "+string(pl2kl)+" <"+global.s_name[pl2kl]+">")
                    }
                    break
                case "level":
                case "l":
                    var pl2lv = 0;
                    var lv = 0;
                    
                    if is_undefined(ds_list_find_value(args,1)) and is_undefined(ds_list_find_value(args,2)) {
                        write_line("Level of player "+string(p)+" <"+global.s_name[p]+">"+" is "+string(global.s_level[p])+".")
                    } else if is_undefined(ds_list_find_value(args,2)) {
                        lv = real(ds_list_find_value(args,1))
                        if global.s_level[p] > lv {
                            global.s_hp[p]              = 30;
                            global.s_pp[p]              = 10;
                            global.s_hpmax[p]           = global.s_hp[p];
                            global.s_ppmax[p]           = global.s_pp[p];
                            global.s_baseoff[p]         = 2;
                            global.s_basedef[p]         = 2;
                            global.s_baseguts[p]        = 2;
                            global.s_basespeed[p]       = 2;
                            global.s_baseiq[p]          = 2;
                            global.s_off[p]             = global.s_baseoff[p];
                            global.s_def[p]             = global.s_basedef[p];
                            global.s_luck[p]            = 2;
                            global.s_speed[p]           = global.s_basespeed[p];
                            global.s_guts[p]            = global.s_baseguts[p];
                            global.s_vitality[p]        = 2;
                            global.s_iq[p]              = global.s_baseiq[p];
                            global.s_guard[p]           = 1;
                            global.s_exp[p]             = 0;
                            global.s_level[p]           = 1;
                            global.s_next[p]            = 2;
                        }
                        super_level_up(lv,p)
                        write_line("Level of player "+string(p)+" <"+global.s_name[p]+">"+" has been set to "+string(global.s_level[p])+".")
                    } else {
                        pl2lv = real(ds_list_find_value(args,1))
                        lv = real(ds_list_find_value(args,2))
                        if global.s_level[pl2lv] > lv {
                            global.s_hp[pl2lv]              = 30;
                            global.s_pp[pl2lv]              = 10;
                            global.s_hpmax[pl2lv]           = global.s_hp[pl2lv];
                            global.s_ppmax[pl2lv]           = global.s_pp[pl2lv];
                            global.s_baseoff[pl2lv]         = 2;
                            global.s_basedef[pl2lv]         = 2;
                            global.s_baseguts[pl2lv]        = 2;
                            global.s_basespeed[pl2lv]       = 2;
                            global.s_baseiq[pl2lv]          = 2;
                            global.s_off[pl2lv]             = global.s_baseoff[pl2lv];
                            global.s_def[pl2lv]             = global.s_basedef[pl2lv];
                            global.s_luck[pl2lv]            = 2;
                            global.s_speed[pl2lv]           = global.s_basespeed[pl2lv];
                            global.s_guts[pl2lv]            = global.s_baseguts[pl2lv];
                            global.s_vitality[pl2lv]        = 2;
                            global.s_iq[pl2lv]              = global.s_baseiq[pl2lv];
                            global.s_guard[pl2lv]           = 1;
                            global.s_exp[pl2lv]             = 0;
                            global.s_level[pl2lv]           = 1;
                            global.s_next[pl2lv]            = 2;
                        }
                        super_level_up(lv,pl2lv)
                        write_line("Level of player "+string(pl2lv)+" <"+global.s_name[pl2lv]+">"+" has been set to "+string(global.s_level[pl2lv])+".")
                    }
                    break
                case "load":
                case "ld":
                    ini_load_data(0) 
                    room_goto(global.theroom)
                    write_line("Game loaded.")
                    break
                case "money":
                case "m":
                    if is_undefined(ds_list_find_value(args,1)) {
                        write_line("Money is "+string(global.money)+".")
                    } else {
                        global.money = real(ds_list_find_value(args,1))
                        write_line("Money has been set to "+string(global.money)+".")
                    }
                    break
                case "mute":
                    write_line("The game is now "+iff(global.mute,"unmuted.","muted."))
                    write_line("The setting will take effect when you enter a new room.")
                    global.mute = !global.mute
                    break
                case "noclip":
                case "nc":
                    write_line("Noclip mode has been "+iff(no_clip,"deactivated.","activated."))
                    no_clip = !no_clip
                    break
                case "player":
                case "p":
                    if is_undefined(ds_list_find_value(args,1)) {
                        write_line("The selected player is "+string(p)+" <"+global.s_name[p]+">")
                    } else {
                        if real(ds_list_find_value(args,1)) < 0 or real(ds_list_find_value(args,1)) > 4 {
                            write_line("Player ID not valid.")
                        } else {
                            p = real(ds_list_find_value(args,1))
                            write_line("The selected player ID is now "+string(p)+" <"+global.s_name[p]+">")
                        }
                    }
                    break
                case "pcount":
                case "pc":
                    if is_undefined(ds_list_find_value(args,1)) {
                        write_line("Player count is "+string(global.pl_count)+".")
                    } else {
                        if real(ds_list_find_value(args,1)) < -1 or real(ds_list_find_value(args,1)) > 4 {
                            write_line("Player count not valid.")
                        } else {
                            global.pl_count = real(ds_list_find_value(args,1))
                            for (var i = 1; i <= global.pl_count; i++) {
                                global.dead[i] = 0
                            }
                            write_line("Player count is "+string(global.pl_count)+".")
                        }
                    }
                    break
                case "presents":
                case "pr":
                    init_presents()
                    write_line("All presents have been reset.")
                    break
                case "room":
                case "r":
                    if is_undefined(ds_list_find_value(args,1)) {
                        write_line("Use the LEFT and RIGHT keys to select a room,")
                        write_line("Then press ENTER to go to the one you selected.")
                        keyboard_clear(vk_enter)
                        room_input = 1
                        can_input = 0
                        room_no = room
                    } else {
                        room_no = real(ds_list_find_value(args,1))
                        if !room_exists(room_no) {
                            write_line("Room ID not valid.")
                        } else {
                            room_goto(room_no)
                            write_line("Switched to room "+string(room_no)+" <"+room_get_name(room_no)+">")
                            if instance_exists(objPlayer) { objPlayer.canmove = 0 }
                        }
                    }
                    break
                case "restart":
                case "re":
                    room_restart()
                    break
                case "reset":
                case "rs":
                    game_restart()
                    break
                case "stats":
                case "s":
                    draw_stats = !draw_stats
                    write_line(iff(draw_stats,"Hiding stats...","Showing stats..."))
                    break
                case "save":
                case "sv":
                    ini_save_data(objPlayer.x,objPlayer.y)
                    write_line("Game saved.")
                    break
                case "cls":
                case "clear":
                    for(var i=0;i<27;i++) {
                        buffer[i] = ""
                    }
                    cursor_pos = 0
                    break
                case "help":
                case "?":
                    write_line("(restart, re - Restart room) (debug, d - Go to debug room) (end, e - End game) (reset, rs - Reset game)")
                    write_line("(flag X, f X - Get or set flag X) (gender, g - Switch genders) (hbm, h - Toggle Hibiki Must Die mode)")
                    write_line("(kill X, k X - Kill or revive player X) (levelup, l - Get level of selected player) (stats, s - Toggle stats)")
                    write_line("(levelup X, l X - Set level of selected player to X) (levelup X Y, l X Y - Set level of player X to Y)")
                    write_line("(load, ld - Load from save file) (save, sv - Save to save file) (money X, m X - Get or set money to X)")
                    write_line("(noclip, nc - Toggle noclip) (player X, p X - Get or set selected player to X) (room X, r X - Go to room X)")
                    write_line("(pcount, pc - Get or set player count to X) (presents, pr - Reset all presents) (room, r - Open room sel.)")
                    write_line("(close, c - Close prompt) (cls, clear - Clear prompt) (help, ? - Read this help)")
                    break
                default:
                    break
            }
            ds_list_destroy(args)
            keyboard_string = ""
        } else {
            buffer[cursor_pos] = "MS) "+keyboard_string+cursor_char
        }
    } else if room_input {
        if room_no > 0 { room_no -= keyboard_check_pressed(vk_left) }
        if room_no < 200 { room_no += keyboard_check_pressed(vk_right) }
        buffer[cursor_pos] = string(room_no)+": "+room_get_name(room_no)
        if keyboard_check_pressed(global.kb_enter) {
            room_goto(room_no)
            write_line("Switched to room "+string(room_no)+" <"+room_get_name(room_no)+">")
            if instance_exists(objPlayer) { objPlayer.canmove = 0 }
            room_input = 0
            can_input = 1
        }
    } else {
        buffer[cursor_pos] = ""
    }
}



if no_clip {
    with parWall { solid = 0 }
} else {
    with parWall { solid = 1 }
}

if hibiki_must_die and room = rmBattle {
    for (var i=1; i<6; i++) {
        if instance_exists(global.enemy[i]) { global.enemy[i].e_off = 999999; global.enemy[i].e_guts = 20000}
    };
    global.custom_msg[0] = "Prepare yourself... here it comes!"
}

/*if instance_exists(objWall) { objWall.visible = show_collisions }
if instance_exists(objWallDiag) { objWallDiag.visible = show_collisions }
if instance_exists(objWallDiag2) { objWallDiag2.visible = show_collisions }
if instance_exists(objWallDiag3) { objWallDiag3.visible = show_collisions }
if instance_exists(objWallDiag4) { objWallDiag4.visible = show_collisions }
if instance_exists(objDoor) { objDoor.visible = show_collisions }
if instance_exists(objWater) { objWater.visible = show_collisions }
if instance_exists(objHotSpring) { objHotSpring.visible = show_collisions }
if instance_exists(objLadder) { objLadder.visible = show_collisions }
if instance_exists(objStairs) { objStairs.visible = show_collisions }
if instance_exists(objStairs2) { objStairs2.visible = show_collisions }
if instance_exists(msgGeneric) { msgGeneric.visible = show_collisions }

/* */
/*  */
