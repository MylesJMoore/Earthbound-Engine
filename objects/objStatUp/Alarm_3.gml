if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    if type = 0 {
        val = 0

        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if !failed {
            switch stat {
                case 0:
                    if global.target[global._pl].e_off >= floor(5*global.target[global._pl].e_realoff/4) {
                        failed = 1
                    } else {
                        val = global.target[global._pl].e_off
                        if global.target[global._pl].e_off + max(floor(global.target[global._pl].e_off/16),1) > floor(5*global.target[global._pl].e_realoff/4) {
                            global.target[global._pl].e_off +=floor(5*global.target[global._pl].e_realoff/4)-global.target[global._pl].e_off
                        } else {
                            global.target[global._pl].e_off += max(floor(global.target[global._pl].e_off/16),1)
                        }
                        val -= global.target[global._pl].e_off
                    }
                    break;
                case 1:
                    if global.target[global._pl].e_def >= floor(5*global.target[global._pl].e_realdef/4) {
                        failed = 1
                    } else {
                        val = global.target[global._pl].e_def
                        if global.target[global._pl].e_def + max(floor(global.target[global._pl].e_def/16),1) > floor(5*global.target[global._pl].e_realdef/4) {
                            global.target[global._pl].e_def += floor(5*global.target[global._pl].e_realdef/4)-global.target[global._pl].e_def
                        } else {
                            global.target[global._pl].e_def += max(floor(global.target[global._pl].e_def/16),1)
                        }
                        val -= global.target[global._pl].e_def
                    }
                    break;
                case 2:
                    if global.target[global._pl].e_guts >= floor(5*global.target[global._pl].e_realguts/4) {
                        failed = 1
                    } else {
                        val = global.target[global._pl].e_guts
                        if global.target[global._pl].e_guts + max(floor(global.target[global._pl].e_guts/16),1) > floor(5*global.target[global._pl].e_realguts/4) {
                            global.target[global._pl].e_guts += floor(5*global.target[global._pl].e_realguts/4)-global.target[global._pl].e_guts
                        } else {
                            global.target[global._pl].e_guts += max(floor(global.target[global._pl].e_guts/16),1)
                        }
                        val -= global.target[global._pl].e_guts
                    }
                    break;
            }
        }
        
        if !failed and abs(val) > 0 {
            a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name +"'s "+lower(_stat)+" went up by "+string(abs(val))+"!"
            var effect;
            effect = instance_create(global.target[global._pl].x,global.target[global._pl].y,objEnStatDownGFX)
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
            a.str[0] = "It had no effect on "+global.target[global._pl].e_art + global.target[global._pl].e_name + "!"
        }
        alarm[11] = 1
    } else {
        if rounds > global.en_count {
            alarm[11] = 1
            exit
        } else {
            if global.enemy[rounds] = 0 {
                alarm[3] = 1
                rounds++
                exit
            }
            failed = 0
            //failed = (random(80) > global.s_luck[global._pl])
            val = 0
            
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
                a.str[0] = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name +"'s "+lower(_stat)+" went up by "+string(abs(val))+"!"
                var effect;
                effect = instance_create(global.enemy[rounds].x,global.enemy[rounds].y,objEnStatDownGFX)
                effect.alarm[0] = 0
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
            alarm[3] = 1
        }
    }
}

