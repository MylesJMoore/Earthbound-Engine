with (other) {
///Ailments
if instance_exists(objBattleMsg) or instance_exists(objCustomDamage) or instance_exists(objEnCustomDamage) {
    alarm[10] = 1
} else {
    var msg;
    msg = "";
    failed = 1;
    
    if backfire {
        if random(100) < ailmentrate {
            switch ailment {
                case 1:
                    if !global.enemy[enmy].crying {
                        global.enemy[enmy].crying = 1
                        msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + " couldn't stop crying!";
                        failed = 0
                    }
                    break;
                case 2:
                    if !global.enemy[enmy].poison {
                        global.enemy[enmy].poison = 1
                        msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + " was poisoned!";
                        failed = 0
                    }
                    break;
                case 3:
                    if !global.enemy[enmy].infected {
                        global.enemy[enmy].infected = 1
                        msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + " was infected!";
                        failed = 0
                    }
                    break;
                case 4:
                    if !global.enemy[enmy].asleep {
                        global.enemy[enmy].asleep = 1
                        msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + " fell asleep!";
                        global.enemy[enmy].sleep_timer = 1
                        failed = 0
                    }
                    break;
                case 5:
                    if !global.enemy[enmy].numb {
                        global.enemy[enmy].numb = 1
                        msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + "'s body became numb!";
                        global.enemy[enmy].numb_timer = 5
                        failed = 0
                    }
                    break;
                case 6:
                    if !global.enemy[enmy].solids {
                        global.enemy[enmy].solids = 1
                        msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + "'s body solidified!";
                        failed = 0
                    }
                    break;
                case 7:
                    if !global.enemy[enmy].strange {
                        global.enemy[enmy].strange = 1
                        msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + " felt a little strange...";
                        failed = 0
                    }
                    break;
                case 8:
                    if !global.enemy[enmy].shocked {
                        global.enemy[enmy].shocked = 1
                        msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + " was shocked!";
                        failed = 0
                    }
                    break;
                case 9:
                    if !global.enemy[enmy].cantconcentrate {
                        global.enemy[enmy].cantconcentrate = 1
                        msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + " forgot how to use skills!";
                        global.enemy[enmy].conc_timer = 3
                        failed = 0
                    }
                    break;
            }
            
            if failed {
                msg = "It had no effect on " + global.enemy[enmy].e_art + global.enemy[enmy].e_name + "!";
            } else {
                with instance_create(global.enemy[enmy].x,global.enemy[enmy].y,objEnemyAilmentFade) { 
                    sprite_index = global.enemy[enmy].sprite_index  
                    color = make_color_rgb(115,0,223)
                } 
            }
        } else {
            msg = "It had no effect on " + global.enemy[enmy].e_art + global.enemy[enmy].e_name + "!";
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
            }
            
            if failed {
                msg = "It had no effect on " + global.s_name[tgt] + "!";
            } else {
                with instance_create(global.healthbar[tgt].x,global.healthbar[tgt].y,objHealthBarRed) { 
                    color = make_color_rgb(115,0,223);
                    audio_play_sound(sndailment,0,0)
                } 
            }
            
        } else {
            msg = "It had no effect on " + global.s_name[tgt] + "!";
        }
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0;
        a.str[0] = msg;
        alarm[1] = 1
    }
}

}
