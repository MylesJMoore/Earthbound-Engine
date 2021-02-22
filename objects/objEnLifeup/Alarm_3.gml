if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    if type < 3 {
        en_random_choser()
        var msg;
        msg = ""
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        switch type {
            case 0:
                lifeup = irandom_range(74,126);
                break;
            case 1:
                lifeup = irandom_range(224,376);
                break;
            case 2:
                lifeup = 1000;
                break;
        }
        
        if (lifeup+global.s_hp[tgt]) > global.s_hpmax[tgt] {
            lifeup = global.s_hpmax[tgt]-global.s_hp[tgt];
        }
        
        if lifeup = 0 {
            failed = 1;
        } else {
            if !global.dead[tgt] {
                if global.s_hp[tgt] >= 0 {
                    global.s_hp[tgt] += lifeup
                } else {
                    if lifeup > global.s_hpmax[tgt] {
                        global.s_hp[tgt] = global.s_hpmax[tgt]
                    } else {
                        global.s_hp[tgt] = lifeup
                    }
                }
                if global.s_hp[tgt] == global.s_hpmax[tgt]{
                    msg = global.s_name[tgt] + "'s HP are#   maxed out!"
                } else {
                    msg = global.s_name[tgt] + " recovered#   "+string(lifeup)+" HP!"
                }
            } else {
                failed = 2
            }
        }
        
        if failed = 0 {
            a.str[0] = msg
            with instance_create(global.healthbar[tgt].x,global.healthbar[tgt].y,objHealthBarRed) { 
                color = make_color_rgb(8,240,96);
            } 
            audio_play_sound(sndheal1,0,0)
        } else if failed = 1 {
            a.str[0] = "It had no effect on "+global.s_name[tgt] + "!";
        } else {
            a.str[0] = "...but it was already too late for "+global.s_name[tgt]+"."
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
            var msg;
            msg = ""
            failed = 0
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            
            lifeup = irandom_range(299,501);
            
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
                a.str[0] = "It had no effect on "+global.s_name[rounds] + "!";
            } 
            rounds++
            alarm[3] = 1
        }
    }
}

