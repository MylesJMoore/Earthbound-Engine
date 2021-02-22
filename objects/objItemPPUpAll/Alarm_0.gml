if instance_exists(objBattleMsg) {
    alarm[0] = 1
} else {
    if !global.dead[rounds] {
        if global.s_pp[rounds] != global.s_ppmax[rounds] {
            lifeup = custom_ppup;
            //lifeup += choose(-1,1)*ceil(lifeup*0.25)

            if (lifeup+global.s_pp[rounds]) > global.s_ppmax[rounds] {
                lifeup = global.s_ppmax[rounds]-global.s_pp[rounds];
            }
            
            done = 1
            direction = 90
            speed = 4
            
            if global.s_pp[rounds] >= 0 {
                global.s_pp[rounds] += lifeup
            } else {
                if lifeup > global.s_ppmax[rounds] {
                    global.s_pp[rounds] = global.s_ppmax[rounds]
                } else {
                    global.s_pp[rounds] = lifeup
                }
            }
            audio_play_sound(sndheal1,0,0)
            with instance_create(global.healthbar[rounds].x,global.healthbar[rounds].y,objHealthBarRed) { 
                color = make_color_rgb(8,240,96);
            } 
            x = global.healthbar[rounds].x+30
            y = global.healthbar[rounds].y
            
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
                if global.s_pp[rounds] == global.s_ppmax[rounds]{
                    a.str[0] = global.s_name[rounds] + "'s HP are#   maxed out!"
                } else {
                    a.str[0] = global.s_name[rounds] + " recovered#   "+string(lifeup)+" HP!"
                }
            
            
            rounds++
            if rounds > global.pl_count {
                alarm[1] = 40
            } else {
                alarm[0] = 40
            }
        } else {
            with instance_create(0,0,objBattleMsg) {
                strno = 0;
                str[0] = "It had no effect on "+global.s_name[objItemPPUpAll.rounds] + "!"
            }   
            rounds++
            if rounds > global.pl_count {
                alarm[1] = 1
            } else {
                alarm[0] = 1
            }
        }
    } else {
        rounds++
        if rounds > global.pl_count {
            alarm[1] = 1
        } else {
            alarm[0] = 1
        }
    }
}

