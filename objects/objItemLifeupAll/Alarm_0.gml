if instance_exists(objBattleMsg) {
    alarm[0] = 1
} else {
    if !global.dead[rounds] {
        if global.s_hp[rounds] != global.s_hpmax[rounds] {
            switch act[global._pl] {
                case "item_lifeup_a_all":
                    lifeup = lifeup_effect(0);
                    break;
                case "item_lifeup_b_all":
                    lifeup = lifeup_effect(1);
                    break;
                case "item_lifeup_g_all":
                    lifeup = lifeup_effect(2);
                    break;
                case "item_lifeup_o":
                    lifeup = lifeup_effect(3);
                    break;
                case "item_lifeup_custom":
                    lifeup = custom_lifeup;
                    //lifeup += choose(-1,1)*ceil(lifeup*0.25)
                    break;
            }

            if (lifeup+global.s_hp[rounds]) > global.s_hpmax[rounds] {
                lifeup = global.s_hpmax[rounds]-global.s_hp[rounds];
            }
            
            done = 1
            direction = 90
            speed = 4
            
            if global.s_hp[rounds] >= 0 {
                global.s_hp[rounds] += lifeup
            } else {
                if lifeup > global.s_hpmax[rounds] {
                    global.s_hp[rounds] = global.s_hpmax[rounds]
                } else {
                    global.s_hp[rounds] = lifeup
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
                if global.s_hp[rounds] == global.s_hpmax[rounds]{
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
                str[0] = "It had no effect on "+global.s_name[objItemLifeupAll.rounds] + "!"
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

