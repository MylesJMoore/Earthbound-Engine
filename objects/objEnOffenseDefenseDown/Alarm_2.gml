if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if type = 0 {
        var val,val2;
        val = 0
        val2 = 0
        en_random_choser()
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if global.s_off[tgt] > floor(3*global.s_realoff[tgt]/4) {
            val = global.s_off[tgt]
            if global.s_off[tgt] - max(floor(global.s_off[tgt]/16),1) < floor(3*global.s_realoff[tgt]/4) {
                global.s_off[tgt]-=global.s_off[tgt]-floor(3*global.s_realoff[tgt]/4)
            } else {
                global.s_off[tgt] -= max(floor(global.s_off[tgt]/16),1)
            }
            val -= global.s_off[tgt]
        }

        if global.s_def[tgt] > floor(3*global.s_realdef[tgt]/4) {
            val2 = global.s_def[tgt]
            if global.s_def[tgt] - max(floor(global.s_def[tgt]/16),1) < floor(3*global.s_realdef[tgt]/4) {
                global.s_def[tgt]-=global.s_def[tgt]-floor(3*global.s_realdef[tgt]/4)
            } else {
                global.s_def[tgt] -= max(floor(global.s_def[tgt]/16),1)
            }
            val2 -= global.s_def[tgt]
        }
        
        if val <= 0 and val2 <= 0 { failed = 1 }
        
        if !failed {
            a.strno = 1
            a.str[0] = global.s_name[tgt] +"'s offense went down by "+string(val)+"!";
            a.str[1] = global.s_name[tgt] +"'s defense went down by "+string(val2)+"!";
            var effect, effect2;
            effect = instance_create(global.healthbar[tgt].x+30,global.healthbar[tgt].y+32,objEnStatDownGFX)
            effect2 = instance_create(global.healthbar[tgt].x+30,global.healthbar[tgt].y+32,objEnStatDownGFX)
            effect.alarm[0] = 1
            effect2.alarm[0] = 30
            effect.color = make_color_rgb(247,127,0);
            effect2.color = make_color_rgb(36,136,253);
            audio_play_sound(sndStatDown,0,0)
        } else {
            a.str[0] = "It had no effect on "+global.s_name[tgt] + "!";
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
            var val,val2;
            val = 0
            val2 = 0
            failed = 0
            
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
    
            if global.s_off[rounds] > floor(3*global.s_realoff[rounds]/4) {
                val = global.s_off[rounds]
                if global.s_off[rounds] - max(floor(global.s_off[rounds]/16),1) < floor(3*global.s_realoff[rounds]/4) {
                    global.s_off[rounds]-=global.s_off[rounds]-floor(3*global.s_realoff[rounds]/4)
                } else {
                    global.s_off[rounds] -= max(floor(global.s_off[rounds]/16),1)
                }
                val -= global.s_off[rounds]
            }

            if global.s_def[rounds] > floor(3*global.s_realdef[rounds]/4) {
                val2 = global.s_def[rounds]
                if global.s_def[rounds] - max(floor(global.s_def[rounds]/16),1) < floor(3*global.s_realdef[rounds]/4) {
                    global.s_def[rounds]-=global.s_def[rounds]-floor(3*global.s_realdef[rounds]/4)
                } else {
                    global.s_def[rounds] -= max(floor(global.s_def[rounds]/16),1)
                }
                val2 -= global.s_def[rounds]
            }

            if val <= 0 and val2 <= 0 { failed = 1 }
            
            if !failed {
                a.strno = 1
                a.str[0] = global.s_name[rounds] +"'s offense went down by "+string(val)+"!";
                a.str[1] = global.s_name[rounds] +"'s defense went down by "+string(val2)+"!";
                var effect, effect2;
                effect = instance_create(global.healthbar[rounds].x+30,global.healthbar[rounds].y+32,objEnStatDownGFX)
                effect2 = instance_create(global.healthbar[rounds].x+30,global.healthbar[rounds].y+32,objEnStatDownGFX)
                effect.alarm[0] = 1
                effect2.alarm[0] = 30
                effect.color = make_color_rgb(247,127,0);
                effect2.color = make_color_rgb(36,136,253);
                audio_play_sound(sndStatDown,0,0)
            } else {
                a.str[0] = "It had no effect on "+global.s_name[rounds] + "!";
            }
            rounds++
            alarm[2] = 1
        }
    }
}

