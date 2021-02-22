if instance_exists(objBattleMsg) {
    alarm[0] = 1
} else {
    var msg, failed;
    msg = ""
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0
    failed = 0
    //0: None; 1: Crying; 2: Poison; 3: Infection; 4: Sleep; 5: Numbness; 6: Solidification; 7: Strangeness; 8: Shock; 9: Can't concentrate; 10: Death (Half); 11: Death (Full)
    switch tocure {
        case 1:
            if global.s_crying[global.target[global._pl]] { 
                global.s_crying[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + " finally stopped crying!" 
            } else {
                failed = 1
            }
            break;
        case 2:
            if global.s_poison[global.target[global._pl]] { 
                global.s_poison[global.target[global._pl]] = 0
                msg = "The poison was removed from#   " + global.s_name[global.target[global._pl]] + "'s body!"
            } else {
                failed = 1
            }
            break;
        case 3:
            if global.s_infected[global.target[global._pl]] { 
                global.s_infected[global.target[global._pl]] = 0
                msg = "The "+choose("biohazard","infection","infectious agent","pathogen")+" was removed from#   " + global.s_name[global.target[global._pl]] + "'s body!"
            } else {
                failed = 1
            }
            break;
        case 4:
            if global.s_asleep[global.target[global._pl]] { 
                global.s_asleep[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + " woke up!"
            } else {
                failed = 1
            }
            break;
        case 5:
            if global.s_shocked[global.target[global._pl]] { 
                global.s_shocked[global.target[global._pl]] = 0
                msg = "The "+choose("numbness","paralysis")+" faded from#   "+global.s_name[global.target[global._pl]] + "'s body!"
            } else {
                failed = 1
            }
            break;
        case 7:
            if global.s_strange[global.target[global._pl]] { 
                global.s_strange[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + " stopped feeling strange!"
            } else {
                failed = 1
            }
            break;
        case 8:
            if global.s_shocked[global.target[global._pl]] { 
                global.s_shocked[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + " got over the shock!"
            } else {
                failed = 1
            }
            break;
        case 9:
            if global.s_cantconcentrate[global.target[global._pl]] { 
                global.s_cantconcentrate[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + " was able to concentrate!"
            } else {
                failed = 1
            }
            break;
        case 10:
            if global.dead[global.target[global._pl]] { 
                global.dead[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + choose(" was revived!"," is back!")
                global.s_hp[global.target[global._pl]] = ceil(global.s_hpmax[global.target[global._pl]]/2)
            } else {
                failed = 1
            }
            break;
        case 11:
            if global.dead[global.target[global._pl]] { 
                global.dead[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + choose(" was revived!"," is back!")
                global.s_hp[global.target[global._pl]] = global.s_hpmax[global.target[global._pl]]
            } else {
                failed = 1
            }
            break;
    }
    
    if msg != "" and !failed {
        with instance_create(global.healthbar[global.target[global._pl]].x,global.healthbar[global.target[global._pl]].y,objHealthBarRed) { 
            color = make_color_rgb(8,240,96);
        } 
        a.str[0] = msg
        audio_play_sound(sndheal2,0,0)
    } else {
        a.str[0] = "It had no effect on "+global.s_name[global.target[global._pl]] + "!";
    }
    alarm[10] = 1
}

