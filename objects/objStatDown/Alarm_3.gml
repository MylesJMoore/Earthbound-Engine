if instance_exists(objStatDownFx) or instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    if type = 0 {
        var val;
        en_random_choser()
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if !failed {
            switch stat {
                case 0:
                    if global.s_off[tgt] <= floor(3*global.s_realoff[tgt]/4) {
                        failed = 1
                    } else {
                        val = global.s_off[tgt]
                        if global.s_off[tgt] - max(floor(global.s_off[tgt]/16),1) < floor(3*global.s_realoff[tgt]/4) {
                            global.s_off[tgt]-=global.s_off[tgt]-floor(3*global.s_realoff[tgt]/4)
                        } else {
                            global.s_off[tgt] -= max(floor(global.s_off[tgt]/16),1)
                        }
                        val -= global.s_off[tgt]
                    }
                    break;
                case 1:
                    if global.s_def[tgt] <= floor(3*global.s_realdef[tgt]/4) {
                        failed = 1
                    } else {
                        val = global.s_def[tgt]
                        if global.s_def[tgt] - max(floor(global.s_def[tgt]/16),1) < floor(3*global.s_realdef[tgt]/4) {
                            global.s_def[tgt]-=global.s_def[tgt]-floor(3*global.s_realdef[tgt]/4)
                        } else {
                            global.s_def[tgt] -= max(floor(global.s_def[tgt]/16),1)
                        }
                        val -= global.s_def[tgt]
                    }
                    break;
                case 2:
                    if global.s_guts[tgt] <= floor(3*global.s_realguts[tgt]/4) {
                        failed = 1
                    } else {
                        val = global.s_guts[tgt]
                        if global.s_guts[tgt] - max(floor(global.s_guts[tgt]/16),1) < floor(3*global.s_realguts[tgt]/4) {
                            global.s_guts[tgt]-=global.s_guts[tgt]-floor(3*global.s_realguts[tgt]/4)
                        } else {
                            global.s_guts[tgt] -= max(floor(global.s_guts[tgt]/16),1)
                        }
                        val -= global.s_guts[tgt]
                    }
                    break;
            }
        }
        
        if !failed and val > 0{
            a.str[0] = global.s_name[tgt] +"'s "+lower(_stat)+" went down by "+string(abs(val))+"!"
            var effect;
            effect = instance_create(global.healthbar[tgt].x+28,global.healthbar[tgt].y+32,objEnStatDownGFX)
            effect.alarm[0] = 1
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
            audio_play_sound(sndStatDown,0,0)
        } else {
            a.str[0] = "It had no effect on "+global.s_name[tgt] + "!"
        }
        alarm[11] = 1
    } else {
        if rounds > global.pl_count {
            alarm[11] = 1
            exit
        } else {
            if global.dead[rounds] {
                alarm[3] = 1
                rounds++
                exit
            }
            failed = 0
            //failed = (random(80) > global.s_luck[global._pl])
            
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
    
            if !failed {
                switch stat {
                    case 0:
                        if global.s_off[rounds] <= floor(3*global.s_realoff[rounds]/4) {
                            failed = 1
                        } else {
                            val = global.s_off[rounds]
                            if global.s_off[rounds] - max(floor(global.s_off[rounds]/16),1) < floor(3*global.s_realoff[rounds]/4) {
                                global.s_off[rounds]-=global.s_off[rounds]-floor(3*global.s_realoff[rounds]/4)
                            } else {
                                global.s_off[rounds] -= max(floor(global.s_off[rounds]/16),1)
                            }
                            val -= global.s_off[rounds]
                        }
                        break;
                    case 1:
                        if global.s_def[rounds] <= floor(3*global.s_realdef[rounds]/4) {
                            failed = 1
                        } else {
                            val = global.s_def[rounds]
                            if global.s_def[rounds] - max(floor(global.s_def[rounds]/16),1) < floor(3*global.s_realdef[rounds]/4) {
                                global.s_def[rounds]-=global.s_def[rounds]-floor(3*global.s_realdef[rounds]/4)
                            } else {
                                global.s_def[rounds] -= max(floor(global.s_def[rounds]/16),1)
                            }
                            val -= global.s_def[rounds]
                        }
                        break;
                    case 2:
                        if global.s_guts[rounds] <= floor(3*global.s_realguts[rounds]/4) {
                            failed = 1
                        } else {
                            val = global.s_guts[rounds]
                            if global.s_guts[rounds] - max(floor(global.s_guts[rounds]/16),1) < floor(3*global.s_realguts[rounds]/4) {
                                global.s_guts[rounds]-=global.s_guts[rounds]-floor(3*global.s_realguts[rounds]/4)
                            } else {
                                global.s_guts[rounds] -= max(floor(global.s_guts[rounds]/16),1)
                            }
                            val -= global.s_guts[rounds]
                        }
                        break;
                }
            }
            
            if !failed and val > 0{
                a.str[0] = global.s_name[rounds] +"'s "+lower(_stat)+" went down by "+string(abs(val))+"!"
                var effect;
                effect = instance_create(global.healthbar[rounds].x+28,global.healthbar[rounds].y+32,objEnStatDownGFX)
                effect.alarm[0] = 1
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
                audio_play_sound(sndStatDown,0,0)
            } else {
                a.str[0] = "It had no effect on "+global.s_name[rounds] + "!"
            }
            rounds++
            alarm[3] = 1
        }
    }
}

