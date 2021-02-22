if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if type = 0 {
        var val;
        val = 0
        random_choser_extra2()
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if !failed {
            switch stat {
                case 0:
                    if global.enemy[tgt].e_off >= floor(5*global.enemy[tgt].e_realoff/4) {
                        failed = 1
                    } else {
                        val = global.enemy[tgt].e_off
                        if global.enemy[tgt].e_off + max(floor(global.enemy[tgt].e_off/16),1) > floor(5*global.enemy[tgt].e_realoff/4) {
                            global.enemy[tgt].e_off +=floor(5*global.enemy[tgt].e_realoff/4)-global.enemy[tgt].e_off
                        } else {
                            global.enemy[tgt].e_off += max(floor(global.enemy[tgt].e_off/16),1)
                        }
                        val -= global.enemy[tgt].e_off
                    }
                    break;
                case 1:
                    if global.enemy[tgt].e_def >= floor(5*global.enemy[tgt].e_realdef/4) {
                        failed = 1
                    } else {
                        val = global.enemy[tgt].e_def
                        if global.enemy[tgt].e_def + max(floor(global.enemy[tgt].e_def/16),1) > floor(5*global.enemy[tgt].e_realdef/4) {
                            global.enemy[tgt].e_def += floor(5*global.enemy[tgt].e_realdef/4)-global.enemy[tgt].e_def
                        } else {
                            global.enemy[tgt].e_def += max(floor(global.enemy[tgt].e_def/16),1)
                        }
                        val -= global.enemy[tgt].e_def
                    }
                    break;
                case 2:
                    if global.enemy[tgt].e_guts >= floor(5*global.enemy[tgt].e_realguts/4) {
                        failed = 1
                    } else {
                        val = global.enemy[tgt].e_guts
                        if global.enemy[tgt].e_guts + max(floor(global.enemy[tgt].e_guts/16),1) > floor(5*global.enemy[tgt].e_realguts/4) {
                            global.enemy[tgt].e_guts += floor(5*global.enemy[tgt].e_realguts/4)-global.enemy[tgt].e_guts
                        } else {
                            global.enemy[tgt].e_guts += max(floor(global.enemy[tgt].e_guts/16),1)
                        }
                        val -= global.enemy[tgt].e_guts
                    }
                    break;
            }
        }
        
        if !failed and abs(val) > 0 {
            a.str[0] = upper(global.enemy[tgt].e_art) + global.enemy[tgt].e_name +"'s "+lower(_stat)+" went up by "+string(abs(val))+"!";
            var effect;
            effect = instance_create(global.enemy[tgt].x,global.enemy[tgt].y,objEnStatDownGFX)
            effect.alarm[0] = 1
            effect.image_yscale = -1
            switch stat {
                case 0:
                    effect.color = make_color_rgb(247,127,0);
                    break;
                case 1:
                    effect.color = make_color_rgb(36,136,253);
                    break;
                case 2:
                    effect.color = make_color_rgb(34,177,76);
                    break;
            }
            audio_play_sound(sndStatUp,0,0)
        } else {
            a.str[0] = "It had no effect on "+global.enemy[tgt].e_art + global.enemy[tgt].e_name + "!";
        }
        alarm[11] = 1
    } else {
        if rounds > global.en_count {
            alarm[11] = 1
            exit
        } else {
            if global.enemy[rounds] = 0 {
                alarm[2] = 1
                rounds++
                exit
            }
            var val;
            val = 0
            failed = 0
            
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
    
            if !failed {
                switch stat {
                    case 0:
                    if global.enemy[rounds].e_off >= floor(5*global.enemy[rounds].e_realoff/4) {
                        failed = 1
                    } else {
                        val = global.enemy[rounds].e_off
                        if global.enemy[rounds].e_off + max(floor(global.enemy[rounds].e_off/16),1) > floor(5*global.enemy[rounds].e_realoff/4) {
                            global.enemy[rounds].e_off +=floor(5*global.enemy[rounds].e_realoff/4)-global.enemy[rounds].e_off
                        } else {
                            global.enemy[rounds].e_off += max(floor(global.enemy[rounds].e_off/16),1)
                        }
                        val -= global.enemy[rounds].e_off
                    }
                    break;
                case 1:
                    if global.enemy[rounds].e_def >= floor(5*global.enemy[rounds].e_realdef/4) {
                        failed = 1
                    } else {
                        val = global.enemy[rounds].e_def
                        if global.enemy[rounds].e_def + max(floor(global.enemy[rounds].e_def/16),1) > floor(5*global.enemy[rounds].e_realdef/4) {
                            global.enemy[rounds].e_def += floor(5*global.enemy[rounds].e_realdef/4)-global.enemy[rounds].e_def
                        } else {
                            global.enemy[rounds].e_def += max(floor(global.enemy[rounds].e_def/16),1)
                        }
                        val -= global.enemy[rounds].e_def
                    }
                    break;
                case 2:
                    if global.enemy[rounds].e_guts >= floor(5*global.enemy[rounds].e_realguts/4) {
                        failed = 1
                    } else {
                        val = global.enemy[rounds].e_guts
                        if global.enemy[rounds].e_guts + max(floor(global.enemy[rounds].e_guts/16),1) > floor(5*global.enemy[rounds].e_realguts/4) {
                            global.enemy[rounds].e_guts += floor(5*global.enemy[rounds].e_realguts/4)-global.enemy[rounds].e_guts
                        } else {
                            global.enemy[rounds].e_guts += max(floor(global.enemy[rounds].e_guts/16),1)
                        }
                        val -= global.enemy[rounds].e_guts
                    }
                    break;
                }
            }
            
            if !failed and abs(val) > 0{
                a.str[0] = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name +"'s "+lower(_stat)+" went up by "+string(abs(val))+"!";
                var effect;
                effect = instance_create(global.enemy[rounds].x,global.enemy[rounds].y,objEnStatDownGFX)
                effect.alarm[0] = 1
                effect.image_yscale = -1
                switch stat {
                    case 0:
                        effect.color = make_color_rgb(247,127,0);
                        break;
                    case 1:
                        effect.color = make_color_rgb(36,136,253);
                        break;
                    case 2:
                        effect.color = make_color_rgb(34,177,76);
                        break;
                }
                audio_play_sound(sndStatUp,0,0)
            } else {
                a.str[0] = "It had no effect on "+global.enemy[rounds].e_art + global.enemy[rounds].e_name + "!"
            }
            rounds++
            alarm[2] = 1
        }
    }
}



