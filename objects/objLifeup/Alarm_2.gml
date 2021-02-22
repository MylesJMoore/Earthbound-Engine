if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if type < 3 {
        var msg;
        msg = ""
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        switch type {
            case 0:
                lifeup = lifeup_effect(0);
                break;
            case 1:
                lifeup = lifeup_effect(1);
                break;
            case 2:
                lifeup = lifeup_effect(2);
                break;
        }
        
        if (lifeup+global.s_hp[global.target[global._pl]]) > global.s_hpmax[global.target[global._pl]] {
            lifeup = global.s_hpmax[global.target[global._pl]]-global.s_hp[global.target[global._pl]];
        }
        
        if lifeup = 0 {
            failed = 1;
        } else {
            if !global.dead[global.target[global._pl]] {
                if global.s_hp[global.target[global._pl]] >= 0 {
                    global.s_hp[global.target[global._pl]] += lifeup
                } else {
                    if lifeup > global.s_hpmax[global.target[global._pl]] {
                        global.s_hp[global.target[global._pl]] = global.s_hpmax[global.target[global._pl]]
                    } else {
                        global.s_hp[global.target[global._pl]] = lifeup
                    }
                }
                if global.s_hp[global.target[global._pl]] == global.s_hpmax[global.target[global._pl]]{
                    msg = global.s_name[global.target[global._pl]] + "'s HP are#   maxed out!"
                } else {
                    msg = global.s_name[global.target[global._pl]] + " recovered#   "+string(lifeup)+" HP!"
                }
            } else {
                failed = 2
            }
        }
        
        if failed = 0 {
            a.str[0] = msg
            with instance_create(global.healthbar[global.target[global._pl]].x,global.healthbar[global.target[global._pl]].y,objHealthBarRed) { 
                color = make_color_rgb(8,240,96);
            } 
            audio_play_sound(sndheal1,0,0)
        } else if failed = 1 {
            a.str[0] = "It had no effect on "+global.s_name[global.target[global._pl]] + "!"
        } else {
            a.str[0] = "...but it was already too late for "+global.s_name[global.target[global._pl]]+"."
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
            var msg;
            msg = ""
            failed = 0
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            
            lifeup = lifeup_effect(3);
            
            if (lifeup+global.s_hp[rounds]) > global.s_hpmax[rounds] {
                lifeup = global.s_hpmax[rounds]-global.s_hp[rounds];
            }
            
            if lifeup = 0 {
                failed = 1;
            } else {
                if global.s_hp[rounds] >= 0 {
                    global.s_hp[rounds] += lifeup
                } else {
                    if lifeup > global.s_hpmax[rounds] {
                        global.s_hp[rounds] = global.s_hpmax[rounds]
                    } else {
                        global.s_hp[rounds] = lifeup
                    }
                }
                if global.s_hp[rounds] == global.s_hpmax[rounds]{
                    msg = global.s_name[rounds] + "'s HP are#   maxed out!"
                } else {
                    msg = global.s_name[rounds] + " recovered#   "+string(lifeup)+" HP!"
                }
            }
            
            if !failed{
                a.str[0] = msg
                with instance_create(global.healthbar[rounds].x,global.healthbar[rounds].y,objHealthBarRed) { 
                    color = make_color_rgb(8,240,96);
                } 
                audio_play_sound(sndheal1,0,0)
            } else {
                a.str[0] = "It had no effect on "+global.s_name[rounds] + "!"
            } 
            rounds++
            alarm[2] = 1
        }
    }
}

