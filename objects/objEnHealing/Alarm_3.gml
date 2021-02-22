if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    var msg, list, ailment;
    msg = ""
    ailment = ""
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0
    failed = 0
    var list;
    list = ds_list_create();
    
    en_random_choser_ignore_death()
    
    switch type {
        case 0:
            if !global.dead[tgt] {
                if global.s_crying[tgt] { ds_list_add(list,"crying"); }
                if global.s_asleep[tgt] { ds_list_add(list,"asleep"); }
            } else {
                failed = 1
            }
            break;
        case 1:
            if !global.dead[tgt] {
                if global.s_crying[tgt]   { ds_list_add(list,"crying"); }
                if global.s_asleep[tgt]   { ds_list_add(list,"asleep"); }
                if global.s_poison[tgt]   { ds_list_add(list,"poison"); }
                if global.s_infected[tgt] { ds_list_add(list,"infected"); }
                if global.s_strange[tgt]  { ds_list_add(list,"strange");  }
            } else {
                failed = 1
            }
            break;
        case 2:
        case 3:
            if !global.dead[tgt] {
                if global.s_crying[tgt]   { ds_list_add(list,"crying"); }
                if global.s_asleep[tgt]   { ds_list_add(list,"asleep"); }
                if global.s_poison[tgt]   { ds_list_add(list,"poison"); }
                if global.s_infected[tgt] { ds_list_add(list,"infected"); }
                if global.s_strange[tgt]  { ds_list_add(list,"strange");  }
                if global.s_shocked[tgt]  { ds_list_add(list,"shocked");  }
                if global.s_numb[tgt]  { ds_list_add(list,"numb");  }
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
                global.s_crying[tgt] = 0
                msg = global.s_name[tgt] + " finally stopped crying!"
                break
            case "asleep":
                global.s_asleep[tgt] = 0
                msg = global.s_name[tgt] + " woke up!"
                break;
            case "poison":
                global.s_poison[tgt] = 0
                msg = "The poison was removed from#   " + global.s_name[tgt] + "'s body!"
                break;
            case "infected":
                global.s_infected[tgt] = 0
                msg = "The "+choose("biohazard","infection","infectious agent","pathogen")+" was removed from#   " + global.s_name[tgt] + "'s body!"
                break;
            case "strange":
                global.s_strange[tgt] = 0
                msg = global.s_name[tgt] + " stopped feeling strange!"
                break;
            case "shocked":
                global.s_shocked[tgt] = 0
                msg = global.s_name[tgt] + " got over the shock!"
                break;
            case "numb":
                global.s_shocked[tgt] = 0
                msg = "The "+choose("numbness","paralysis")+" faded from#   "+global.s_name[tgt] + "'s body!"
                break;  
            case "death":
                global.dead[tgt] = 0
                msg = global.s_name[tgt] + choose(" was revived!"," is back!")
                if type = 2 {
                    global.s_hp[tgt] = ceil(global.s_hpmax[tgt]/2)
                } else {
                    global.s_hp[tgt] = global.s_hpmax[tgt]
                }
                break;
        }
        a.str[0] = msg
        with instance_create(global.healthbar[tgt].x,global.healthbar[tgt].y,objHealthBarRed) { 
            color = make_color_rgb(8,240,96);
        } 
        audio_play_sound(sndheal2,0,0)
    } else {
        a.str[0] = "It had no effect on "+global.s_name[tgt] + "!";
    }
    alarm[11] = 1
}

