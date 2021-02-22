if instance_exists(objParalysisFx) or instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    if type = 0 {
        var resist;
        en_random_choser()
        resist = global.paralysis_resistance[rounds];
        failed = 0
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if random(100) > (max(1,resist*30)) {
            if !global.s_numb[tgt] {
                global.numb_timer[tgt] = 5
                global.s_numb[tgt] = 1
            } else {
                failed = 1
            }
        } else { 
            failed = 1
        }
        
        if !failed {
            a.str[0] = global.s_name[tgt] + "'s body became numb!"
            with instance_create(global.healthbar[tgt].x,global.healthbar[tgt].y,objHealthBarRed) { 
                    color = make_color_rgb(115,0,223);
                } 
            audio_play_sound(sndailment,0,0)
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
            var resist;
            resist = global.paralysis_resistance[rounds];
            failed = 0
            
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            
            if random(100) > (max(1,resist*30)) {
                if !global.s_numb[rounds] {
                    global.numb_timer[rounds] = 5
                    global.s_numb[rounds] = 1
                } else {
                    failed = 1
                }
            } else { 
                failed = 1
            }
            
            if !failed {
                a.str[0] = global.s_name[rounds] + "'s body became numb!"
                with instance_create(global.healthbar[rounds].x,global.healthbar[rounds].y,objHealthBarRed) { 
                    color = make_color_rgb(115,0,223);
                } 
                audio_play_sound(sndailment,0,0)
            } else {
                a.str[0] = "It had no effect on "+global.s_name[rounds] + "!"
            }
            rounds++
            alarm[3] = 1
        }
    }
}

