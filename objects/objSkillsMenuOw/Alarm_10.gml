/// @description Lifeup or heal one character

alarm[9] = 60

if type = 0 {
    if !global.dead[use] {
        if (lifeup+global.s_hp[use]) > global.s_hpmax[use] {
            lifeup = global.s_hpmax[use]-global.s_hp[use];
        }
        
        if global.s_hp[use] >= 0 {
            global.s_hp[use] += lifeup
        } else {
            if lifeup > global.s_hpmax[use] {
                global.s_hp[use] = global.s_hpmax[use]
            } else {
                global.s_hp[use] = lifeup
            }
        }
    } else {
        lifeup = 0
    }
    
    if lifeup > 0 {
        if global.s_hp[use] = global.s_hpmax[use] {
            message = "@ " + global.s_name[use] + "'s HP are#   maxed out!"
        } else {
            message = "@ " + global.s_name[use] + " recovered#   " + string(lifeup) + " HP!"
        }
        audio_play_sound(sndheal1,0,0)
    } else {
        message = "@ It had no effect on "+global.s_name[use]+"!"
    }
} else {

    var msg, list, ailment, failed;
    ailment = ""
    msg = ""
    failed = 0
    list = ds_list_create();
    
    switch skillact[num] {
        case "healing_a":
            if !global.dead[use] {
                if global.s_crying[use] { ds_list_add(list,"crying"); }
                if global.s_asleep[use] { ds_list_add(list,"asleep"); }
            } else {
                failed = 1
            }
            break;
        case "healing_b":
            if !global.dead[use] {
                if global.s_crying[use]   { ds_list_add(list,"crying"); }
                if global.s_asleep[use]   { ds_list_add(list,"asleep"); }
                if global.s_poison[use]   { ds_list_add(list,"poison"); }
                if global.s_infected[use] { ds_list_add(list,"infected"); }
                if global.s_strange[use]  { ds_list_add(list,"strange");  }
            } else {
                failed = 1
            }
            break;
        case "healing_g":
        case "healing_o":
            if !global.dead[use] {
                if global.s_crying[use]   { ds_list_add(list,"crying"); }
                if global.s_asleep[use]   { ds_list_add(list,"asleep"); }
                if global.s_poison[use]   { ds_list_add(list,"poison"); }
                if global.s_infected[use] { ds_list_add(list,"infected"); }
                if global.s_strange[use]  { ds_list_add(list,"strange");  }
                if global.s_shocked[use]  { ds_list_add(list,"shocked");  }
                if global.s_numb[use]  { ds_list_add(list,"numb");  }
            } else {
                ailment = "death"
            }
            break;
    }
    
    ds_list_shuffle(list);
    if !ds_list_empty(list) {ailment = ds_list_find_value(list, 0);}
    ds_list_destroy(list);
    
    if ailment = "death" and skillact[num] = "healing_g" {
        failed = (random(4) < 1)
    }
    
    if ailment != "" and !failed {
        switch ailment {
            case "crying":
                global.s_crying[use] = 0
                msg = global.s_name[use] + " finally stopped crying!"
                break
            case "asleep":
                global.s_asleep[use] = 0
                msg = global.s_name[use] + " woke up!"
                break;
            case "poison":
                global.s_poison[use] = 0
                msg = "The poison was removed from#   " + global.s_name[use] + "'s body!"
                break;
            case "infected":
                global.s_infected[use] = 0
                msg = "The "+choose("biohazard","infection","infectious agent","pathogen")+" was removed from#   " + global.s_name[use] + "'s body!"
                break;
            case "strange":
                global.s_strange[use] = 0
                msg = global.s_name[use] + " stopped feeling strange!"
                break;
            case "shocked":
                global.s_shocked[use] = 0
                msg = global.s_name[use] + " got over the shock!"
                break;
            case "numb":
                global.s_shocked[use] = 0
                msg = "The "+choose("numbness","paralysis")+" faded from#   "+global.s_name[use] + "'s body!"
                break;  
            case "death":
                global.dead[use] = 0
                msg = global.s_name[use] + choose(" was revived!"," is back!")
                if type = 2 {
                    global.s_hp[use] = ceil(global.s_hpmax[use]/2)
                } else {
                    global.s_hp[use] = global.s_hpmax[use]
                }
                break;
        }
        message = "@ " + msg
        audio_play_sound(sndheal2,0,0)
    } else {
        message = "@ It had no effect on "+global.s_name[use] + "!";
    }

}

