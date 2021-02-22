if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if type = 0 {
        var val;
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0

        if !failed {
            failed = global.dead[global.target[global._pl]]
            switch stat {
                case 0:
                    if global.s_off[global.target[global._pl]] >= floor(5*global.s_realoff[global.target[global._pl]]/4) {
                        failed = 1
                    } else {
                        val = global.s_off[global.target[global._pl]]
                        if global.s_off[global.target[global._pl]] + max(floor(global.s_off[global.target[global._pl]]/16),1) > floor(5*global.s_realoff[global.target[global._pl]]/4) {
                            global.s_off[global.target[global._pl]] +=floor(5*global.s_realoff[global.target[global._pl]]/4)-global.s_off[global.target[global._pl]]
                        } else {
                            global.s_off[global.target[global._pl]] += max(floor(global.s_off[global.target[global._pl]]/16),1)
                        }
                        val -= global.s_off[global.target[global._pl]]
                    }
                    break;
                case 1:
                    if global.s_def[global.target[global._pl]] >= floor(5*global.s_realdef[global.target[global._pl]]/4) {
                        failed = 1
                    } else {
                        val = global.s_def[global.target[global._pl]]
                        if global.s_def[global.target[global._pl]] + max(floor(global.s_def[global.target[global._pl]]/16),1) > floor(5*global.s_realdef[global.target[global._pl]]/4) {
                            global.s_def[global.target[global._pl]] += floor(5*global.s_realdef[global.target[global._pl]]/4)-global.s_def[global.target[global._pl]]
                        } else {
                            global.s_def[global.target[global._pl]] += max(floor(global.s_def[global.target[global._pl]]/16),1)
                        }
                        val -= global.s_def[global.target[global._pl]]
                    }
                    break;
                case 2:
                    if global.s_guts[global.target[global._pl]] >= floor(5*global.s_realguts[global.target[global._pl]]/4) {
                        failed = 1
                    } else {
                        val = global.s_guts[global.target[global._pl]]
                        if global.s_guts[global.target[global._pl]] + max(floor(global.s_guts[global.target[global._pl]]/16),1) > floor(5*global.s_realguts[global.target[global._pl]]/4) {
                            global.s_guts[global.target[global._pl]] += floor(5*global.s_realguts[global.target[global._pl]]/4)-global.s_guts[global.target[global._pl]]
                        } else {
                            global.s_guts[global.target[global._pl]] += max(floor(global.s_guts[global.target[global._pl]]/16),1)
                        }
                        val -= global.s_guts[global.target[global._pl]]
                    }
                    break;
            }
        }
        
        if !failed and abs(val) > 0{
            a.str[0] = global.s_name[global.target[global._pl]] +"'s "+lower(_stat)+" went up by "+string(abs(val))+"!"
            var effect;
            effect = instance_create(global.healthbar[global.target[global._pl]].x+28,global.healthbar[global.target[global._pl]].y+32,objEnStatDownGFX)
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
            a.str[0] = "It had no effect on "+global.s_name[global.target[global._pl]] + "!"
        }
        alarm[11] = 1
    } else {
        if rounds > global.pl_count {
            alarm[11] = 1
            exit
        } else {
            if global.dead[rounds] {
                alarm[2] = 1
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
                        if global.s_off[rounds] >= floor(5*global.s_realoff[rounds]/4) {
                            failed = 1
                        } else {
                            val = global.s_off[rounds]
                            if global.s_off[rounds] + max(floor(global.s_off[rounds]/16),1) > floor(5*global.s_realoff[rounds]/4) {
                                global.s_off[rounds] +=floor(5*global.s_realoff[rounds]/4)-global.s_off[rounds]
                            } else {
                                global.s_off[rounds] += max(floor(global.s_off[rounds]/16),1)
                            }
                            val -= global.s_off[rounds]
                        }
                        break;
                    case 1:
                        if global.s_def[rounds] >= floor(5*global.s_realdef[rounds]/4) {
                            failed = 1
                        } else {
                            val = global.s_def[rounds]
                            if global.s_def[rounds] + max(floor(global.s_def[rounds]/16),1) > floor(5*global.s_realdef[rounds]/4) {
                                global.s_def[rounds] += floor(5*global.s_realdef[rounds]/4)-global.s_def[rounds]
                            } else {
                                global.s_def[rounds] += max(floor(global.s_def[rounds]/16),1)
                            }
                            val -= global.s_def[rounds]
                        }
                        break;
                    case 2:
                        if global.s_guts[rounds] >= floor(5*global.s_realguts[rounds]/4) {
                            failed = 1
                        } else {
                            val = global.s_guts[rounds]
                            if global.s_guts[rounds] + max(floor(global.s_guts[rounds]/16),1) > floor(5*global.s_realguts[rounds]/4) {
                                global.s_guts[rounds] += floor(5*global.s_realguts[rounds]/4)-global.s_guts[rounds]
                            } else {
                                global.s_guts[rounds] += max(floor(global.s_guts[rounds]/16),1)
                            }
                            val -= global.s_guts[rounds]
                        }
                        break;
                }
            }
            
            if !failed and abs(val) > 0{
                a.str[0] = global.s_name[rounds] +"'s "+lower(_stat)+" went up by "+string(abs(val))+"!"
                var effect;
                effect = instance_create(global.healthbar[rounds].x+28,global.healthbar[rounds].y+32,objEnStatDownGFX)
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
                a.str[0] = "It had no effect on "+global.s_name[rounds] + "!"
            }
            rounds++
            alarm[2] = 1
        }
    }
}

