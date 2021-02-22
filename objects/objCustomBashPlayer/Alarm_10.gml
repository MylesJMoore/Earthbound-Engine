/// @description Ailments
if instance_exists(objBattleMsg) or instance_exists(objCustomDamage) or instance_exists(objEnCustomDamage) {
    alarm[10] = 1
} else {
    var msg;
    msg = "";
    failed = 1;
    
    if !backfire {
        if random(100) < ailmentrate {
            switch ailment {
                case 1:
                    if !global.target[global._pl].crying {
                        global.target[global._pl].crying = 1
                        msg = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + " couldn't stop crying!";
                        failed = 0
                    }
                    break;
                case 2:
                    if !global.target[global._pl].poison {
                        global.target[global._pl].poison = 1
                        msg = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + " was poisoned!";
                        failed = 0
                    }
                    break;
                case 3:
                    if !global.target[global._pl].infected {
                        global.target[global._pl].infected = 1
                        msg = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + " was infected!";
                        failed = 0
                    }
                    break;
                case 4:
                    if !global.target[global._pl].asleep {
                        global.target[global._pl].asleep = 1
                        msg = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + " fell asleep!";
                        global.target[global._pl].sleep_timer = 1
                        failed = 0
                    }
                    break;
                case 5:
                    if !global.target[global._pl].numb {
                        global.target[global._pl].numb = 1
                        msg = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + "'s body became numb!";
                        global.target[global._pl].numb_timer = 5
                        failed = 0
                    }
                    break;
                case 6:
                    if !global.target[global._pl].solids {
                        global.target[global._pl].solids = 1
                        msg = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + "'s body solidified!";
                        failed = 0
                    }
                    break;
                case 7:
                    if !global.target[global._pl].strange {
                        global.target[global._pl].strange = 1
                        msg = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + " felt a little strange...";
                        failed = 0
                    }
                    break;
                case 8:
                    if !global.target[global._pl].shocked {
                        global.target[global._pl].shocked = 1
                        msg = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + " was shocked!";
                        failed = 0
                    }
                    break;
                case 9:
                    if !global.target[global._pl].cantconcentrate {
                        global.target[global._pl].cantconcentrate = 1
                        msg = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + " forgot how to use skills!";
                        global.target[global._pl].conc_timer = 3
                        failed = 0
                    }
                    break;
                case 10: 
                    if !global.target[global._pl].turned_around and global.target[global._pl].can_turn_around {
                        global.target[global._pl].turned_around = 1
                        msg = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + " turned the other way!";
                        failed = 0
                    }
                    break;
            }
        } else {
            failed = 1
        }
        
        if failed {
            msg = "It had no effect on " + global.target[global._pl].e_art + global.target[global._pl].e_name + "!";
        } else {
            if ailment != 10 {
                with instance_create(global.target[global._pl].x,global.target[global._pl].y,objEnemyAilmentFade) { 
                    sprite_index = global.target[global._pl].sprite_index  
                    color = make_color_rgb(115,0,223)
                } 
            }
        }
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0;
        a.str[0] = msg;
        
        alarm[2] = 1
    } else {
        if random(100) < ailmentrate {
            switch ailment {
                case 1:
                    if !global.s_crying[tgt] {
                        global.s_crying[tgt] = 1
                        msg = global.s_name[tgt] + " couldn't stop crying!";
                        failed = 0
                    }
                    break;
                case 2:
                    if !global.s_poison[tgt] {
                        global.s_poison[tgt] = 1
                        msg = global.s_name[tgt] + " was poisoned!";
                        failed = 0
                    }
                    break;
                case 3:
                    if !global.s_infected[tgt] {
                        global.s_infected[tgt] = 1
                        msg = global.s_name[tgt] + " was infected!";
                        failed = 0
                    }
                    break;
                case 4:
                    if !global.s_asleep[tgt] {
                        global.s_asleep[tgt] = 1
                        msg = global.s_name[tgt] + " fell asleep!"
                        global.sleep_timer[tgt] = 1
                        failed = 0
                    }
                    break;
                case 5:
                    if !global.s_numb[tgt] {
                        global.s_numb[tgt] = 1
                        msg = global.s_name[tgt] + "'s body became numb!";
                        global.numb_timer[tgt] = 5
                        failed = 0
                    }
                    break;
                case 6:
                    if !global.s_solid[tgt] {
                        global.s_solid[tgt] = 1
                        msg = global.s_name[tgt] + "'s body solidified!";
                        failed = 0
                    }
                    break;
                case 7:
                    if !global.s_strange[tgt] {
                        global.s_strange[tgt] = 1
                        msg = global.s_name[tgt] + " felt a little strange...";
                        failed = 0
                    }
                    break;
                case 8:
                    if !global.s_shocked[tgt] {
                        global.s_shocked[tgt] = 1
                        msg = global.s_name[tgt] + " was shocked!";
                        failed = 0
                    }
                    break;
                case 9:
                    if !global.s_cantconcentrate[tgt] {
                        global.s_cantconcentrate[tgt] = 1
                        global.conc_timer[tgt] = 3
                        msg = global.s_name[tgt] + " forgot how to use skills!";
                        failed = 0
                    }
                    break;
                case 10:
                    failed = 1
                    break;
            }
        } else {
            failed = 1
        }
        
        if failed {
            msg = "It had no effect on " + global.s_name[tgt] + "!";
        } else {
            with instance_create(global.healthbar[tgt].x,global.healthbar[tgt].y,objHealthBarRed) { 
                color = make_color_rgb(115,0,223);
                audio_play_sound(sndailment,0,0)
            } 
        }
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0;
        a.str[0] = msg;
        
        alarm[1] = 1
    }
}

