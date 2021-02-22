if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    var msg, list, ailment;
    msg = ""
    ailment = ""
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0
    var list;
    list = ds_list_create();
    random_choser_extra2()
    
    switch type {
        case 0:
            if global.enemy[tgt].crying { ds_list_add(list,"crying"); }
            if global.enemy[tgt].asleep { ds_list_add(list,"asleep"); }
            break;
        case 1:
            if global.enemy[tgt].crying   { ds_list_add(list,"crying"); }
            if global.enemy[tgt].asleep   { ds_list_add(list,"asleep"); }
            if global.enemy[tgt].poison   { ds_list_add(list,"poison"); }
            if global.enemy[tgt].infected { ds_list_add(list,"infected"); }
            if global.enemy[tgt].strange  { ds_list_add(list,"strange");  }
        case 2:
        case 3:
            if global.enemy[tgt].crying   { ds_list_add(list,"crying"); }
            if global.enemy[tgt].asleep   { ds_list_add(list,"asleep"); }
            if global.enemy[tgt].poison   { ds_list_add(list,"poison"); }
            if global.enemy[tgt].infected { ds_list_add(list,"infected"); }
            if global.enemy[tgt].strange  { ds_list_add(list,"strange");  }
            if global.enemy[tgt].shocked  { ds_list_add(list,"shocked");  }
            if global.enemy[tgt].numb     { ds_list_add(list,"numb");  }
            break;
    }
    
    ds_list_shuffle(list);
    if !ds_list_empty(list) {ailment = ds_list_find_value(list, 0);}
    ds_list_destroy(list);
    
    if ailment != ""{
        switch ailment {
            case "crying":
                global.enemy[tgt].crying = 0
                msg = upper(global.enemy[tgt].e_art) + global.enemy[tgt].e_name + " finally stopped crying!"
                break
            case "asleep":
                global.enemy[tgt].asleep = 0
                msg = upper(global.enemy[tgt].e_art) + global.enemy[tgt].e_name + " woke up!"
                break;
            case "poison":
                global.enemy[tgt].poison = 0
                msg = "The poison was removed from#   " + global.enemy[tgt].e_art + global.enemy[tgt].e_name + "'s body!"
                break;
            case "infected":
                global.enemy[tgt].infected = 0
                msg = "The "+choose("biohazard","infection","infectious agent","pathogen")+" was removed from#   " + global.enemy[tgt].e_art + global.enemy[tgt].e_name + "'s body!"
                break;
            case "strange":
                global.enemy[tgt].strange = 0
                msg = upper(global.enemy[tgt].e_art) + global.enemy[tgt].e_name + " stopped feeling strange!"
                break;
            case "shocked":
                global.enemy[tgt].shocked = 0
                msg = upper(global.enemy[tgt].e_art) + global.enemy[tgt].e_name + " got over the shock!"
                break;
            case "numb":
                global.enemy[tgt].shocked = 0
                msg = "The "+choose("numbness","paralysis")+" faded from#   "+global.enemy[tgt].e_art + global.enemy[tgt].e_name + "'s body!"
                break;  
        }
        a.str[0] = msg
        audio_play_sound(sndheal2,0,0)
    } else {
        a.str[0] = "It had no effect on "+upper(global.enemy[tgt].e_art) + global.enemy[tgt].e_name + "!"
    }
    alarm[11] = 1
}

