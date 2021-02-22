if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if type = 0 {
        var resist;
        en_random_choser()
        resist = global.hypno_resistance[tgt];
        failed = 0
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if random(100) > (max(1,resist*30)) {
            if !global.s_asleep[tgt] {
                global.s_asleep[tgt] = 1
                global.sleep_timer[tgt] = 1
            } else {
                failed = 1
            }
        } else { 
            failed = 1
        }
        
        if !failed {
            a.str[0] = global.s_name[tgt] + " fell asleep!"
            with instance_create(global.healthbar[tgt].x,global.healthbar[tgt].y,objHealthBarRed) { 
                    color = make_color_rgb(115,0,223);
                } 
            audio_play_sound(sndailment,0,0)
        } else {
            a.str[0] = "It had no effect on "+ global.s_name[tgt] + "!";
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
            var resist;
            resist = global.hypno_resistance[rounds];
            failed = 0
            
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            
            if random(100) > (max(1,resist*30)) {
                if !global.s_asleep[rounds] {
                    global.s_asleep[rounds] = 1
                    global.sleep_timer[rounds] = 1
                } else {
                    failed = 1
                }
            } else { 
                failed = 1
            }
            
            if !failed {
                a.str[0] = global.s_name[rounds] + " fell asleep!";
                with instance_create(global.healthbar[rounds].x,global.healthbar[rounds].y,objHealthBarRed) { 
                    color = make_color_rgb(115,0,223);
                } 
                audio_play_sound(sndailment,0,0)
            } else {
                a.str[0] = "It had no effect on "+ global.s_name[rounds] + "!";
            }
            rounds++
            alarm[2] = 1
        }
    }
}

