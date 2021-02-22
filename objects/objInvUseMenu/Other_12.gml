/// @description Heal one character

alarm[1] = 60

var msg, failed;
msg = ""
failed = 0
//0: None; 1: Crying; 2: Poison; 3: Infection; 4: Sleep; 5: Numbness; 6: Solidification; 7: Strangeness; 8: Shock; 9: Can't concentrate; 10: Death (Half); 11: Death (Full)
switch global.item[num,23] {
    case 1:
        if global.s_crying[use] { 
            global.s_crying[use] = 0
            msg = global.s_name[use] + " finally stopped crying!"
        } else {
            failed = 1
        }
        break;
    case 2:
        if global.s_poison[use] { 
            global.s_poison[use] = 0
            msg = "The poison was removed from#   " + global.s_name[use] + "'s body!"
        } else {
            failed = 1
        }
        break;
    case 3:
        if global.s_infected[use] { 
            global.s_infected[use] = 0
            msg = "The "+choose("biohazard","infection","infectious agent","pathogen")+" was removed from#   " + global.s_name[use] + "'s body!"
        } else {
            failed = 1
        }
        break;
    case 4:
        if global.s_asleep[use] { 
            global.s_asleep[use] = 0
            msg = global.s_name[use] + " woke up!"
        } else {
            failed = 1
        }
        break;
    case 5:
        if global.s_numb[use] { 
            global.s_numb[use] = 0
            msg = "The "+choose("numbness","paralysis")+" faded from#   "+global.s_name[use] + "'s body!"
        } else {
            failed = 1
        }
        break;
    case 7:
        if global.s_strange[use] { 
            global.s_strange[use] = 0
            msg = global.s_name[use] + " stopped feeling strange!"
        } else {
            failed = 1
        }
        break;
    case 8:
        if global.s_shocked[use] { 
            global.s_shocked[use] = 0
            msg = global.s_name[use] + " got over the shock!"
        } else {
            failed = 1
        }
        break;
    case 9:
        if global.s_cantconcentrate[use] { 
            global.s_cantconcentrate[use] = 0
            msg = global.s_name[use] + " was able to concentrate!"
        } else {
            failed = 1
        }
        break;
    case 10:
        if global.dead[use] { 
            global.dead[use] = 0
            msg = global.s_name[use] + choose(" was revived!"," is back!")
            global.s_hp[use] = ceil(global.s_hpmax[use]/2)
        } else {
            failed = 1
        }
        break;
    case 11:
        if global.dead[use] { 
            global.dead[use] = 0
            msg = global.s_name[use] + choose(" was revived!"," is back!")
            global.s_hp[use] = global.s_hpmax[use]
        } else {
            failed = 1
        }
        break;
}

if msg != "" and !failed {
    message = "@ "+msg
    audio_play_sound(sndheal2,0,0)
} else {
    message = "@ "+"It had no effect on "+global.s_name[use]+"!"
}

del_item(num_val)

