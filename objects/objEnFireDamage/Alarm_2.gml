if instance_exists(objBattleMsg) or instance_exists(objEnCustomDamage) {
    alarm[2] = 1
} else {
    if rounds > global.pl_count {
        alarm[11] = 1
        exit
    } else {
        if global.dead[rounds]  {
            alarm[2] = 1
            rounds++
            exit
        }    
        var countered = 0;
     
        resist = global.fire_resistance[rounds]; 
        
        dmg = ceil(dmg*(100-30*resist)/100)
    
        if resist != 4 {
            with global.healthbar[rounds] {
                x = xstart
                y = ystart
                path_start(p_shake,6,0,0)
            }
            
            if global.has_psishield[rounds] or global.has_psipshield[rounds] {
                dmg = ceil(dmg/2)
                countered = global.has_psipshield[rounds];
                global.s_shieldlife[rounds]--;
            }
            
            global.custom_dmg = dmg;
            
            var a = instance_create(0,0,objBattleMsg);
            if global.s_shieldlife[rounds] = 0 and (global.has_psishield[rounds] or global.has_psipshield[rounds]) {
                a.strno = 1+countered
                if global.has_psishield[rounds] {
                    a.str[1] = global.s_name[rounds] + "'s psychic shield#   disappeared!";
                } else if global.has_psipshield[rounds] {
                    a.str[1] = global.s_name[rounds] + "'s psychic power shield#   disappeared!";
                }
                if countered {
                    a.str[2] = "...but not before deflecting the attack!"
                }
                global.has_psishield[rounds] = 0
                global.has_psipshield[rounds] = 0
            } else {
                a.strno = countered
                if countered {
                    a.str[1] = "The psychic power shield#   deflected the attack!"
                }
            }
            
            if dmg >= global.s_hp[rounds] {
                instance_create(0,0,objMortalDamage)
                msg = string(dmg)+" HP of mortal damage#   to "+global.s_name[rounds] + "!";
            } else {
                audio_play_sound(sndbump,0,0)
                msg = string(dmg)+" HP of damage#   to "+global.s_name[rounds] + "!";
            }
            
            global.s_hp[rounds] -= dmg
            a.str[0] = msg;
            
            if countered { instance_create(x,y,objEnCustomDamage) }
        } else {
            failed = 1
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            a.str[0] = "It had no effect on "+global.s_name[rounds] + "!";
        }
        rounds++
        alarm[2] = 1
    }
}

