if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    var msg, list, ailment;
    msg = ""
    ailment = ""
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0
    failed = 0
    var list;
    list = ds_list_create();
    
    switch type {
        case 0:
            if !global.dead[global.target[global._pl]] {
                if global.s_crying[global.target[global._pl]] { ds_list_add(list,"crying"); }
                if global.s_asleep[global.target[global._pl]] { ds_list_add(list,"asleep"); }
            } else {
                failed = 1
            }
            break;
        case 1:
            if !global.dead[global.target[global._pl]] {
                if global.s_crying[global.target[global._pl]]   { ds_list_add(list,"crying"); }
                if global.s_asleep[global.target[global._pl]]   { ds_list_add(list,"asleep"); }
                if global.s_poison[global.target[global._pl]]   { ds_list_add(list,"poison"); }
                if global.s_infected[global.target[global._pl]] { ds_list_add(list,"infected"); }
                if global.s_strange[global.target[global._pl]]  { ds_list_add(list,"strange");  }
            } else {
                failed = 1
            }
            break;
        case 2:
        case 3:
            if !global.dead[global.target[global._pl]] {
                if global.s_crying[global.target[global._pl]]   { ds_list_add(list,"crying"); }
                if global.s_asleep[global.target[global._pl]]   { ds_list_add(list,"asleep"); }
                if global.s_poison[global.target[global._pl]]   { ds_list_add(list,"poison"); }
                if global.s_infected[global.target[global._pl]] { ds_list_add(list,"infected"); }
                if global.s_strange[global.target[global._pl]]  { ds_list_add(list,"strange");  }
                if global.s_shocked[global.target[global._pl]]  { ds_list_add(list,"shocked");  }
                if global.s_numb[global.target[global._pl]]  { ds_list_add(list,"numb");  }
            } else {
                ailment = "death"
            }
            break;
    }
    
    ds_list_shuffle(list);
    if !ds_list_empty(list) {ailment = ds_list_find_value(list, 0);}
    ds_list_destroy(list);
    
    if ailment = "death" and type = 2 {
        failed = (random(4) < 1)
    }
    
    if ailment != "" and !failed {
        switch ailment {
            case "crying":
                global.s_crying[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + " finally stopped crying!"
                break
            case "asleep":
                global.s_asleep[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + " woke up!"
                break;
            case "poison":
                global.s_poison[global.target[global._pl]] = 0
                msg = "The poison was removed from#   " + global.s_name[global.target[global._pl]] + "'s body!"
                break;
            case "infected":
                global.s_infected[global.target[global._pl]] = 0
                msg = "The "+choose("biohazard","infection","infectious agent","pathogen")+" was removed from#   " + global.s_name[global.target[global._pl]] + "'s body!"
                break;
            case "strange":
                global.s_strange[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + " stopped feeling strange!"
                break;
            case "shocked":
                global.s_shocked[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + " got over the shock!"
                break;
            case "numb":
                global.s_shocked[global.target[global._pl]] = 0
                msg = "The "+choose("numbness","paralysis")+" faded from#   "+global.s_name[global.target[global._pl]] + "'s body!"
                break;  
            case "death":
                global.dead[global.target[global._pl]] = 0
                msg = global.s_name[global.target[global._pl]] + choose(" was revived!"," is back!")
                if type = 2 {
                    global.s_hp[global.target[global._pl]] = ceil(global.s_hpmax[global.target[global._pl]]/2)
                } else {
                    global.s_hp[global.target[global._pl]] = global.s_hpmax[global.target[global._pl]]
                }
                break;
        }
        a.str[0] = msg
        with instance_create(global.healthbar[global.target[global._pl]].x,global.healthbar[global.target[global._pl]].y,objHealthBarRed) { 
            color = make_color_rgb(8,240,96);
        } 
        audio_play_sound(sndheal2,0,0)
    } else {
        a.str[0] = "It had no effect on "+global.s_name[global.target[global._pl]] + "!"
    }
    alarm[11] = 1
}

