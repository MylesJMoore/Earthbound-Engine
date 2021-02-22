if instance_exists(objBattleMsg) or instance_exists(objCustomDamage) {
    alarm[3] = 1
} else {
    if rounds > global.en_count {
        alarm[11] = 1
        exit
    } else {
        if global.enemy[rounds] = 0 {
            alarm[3] = 1
            rounds++
            exit
        }    

        var countered = 0;
        resist = global.enemy[rounds].fire_resistance; 
        
        dmg = ceil(dmg*(100-30*resist)/100)
    
        if resist !=4 {
            if global.enemy[rounds].has_psishield or global.enemy[rounds].has_psipshield {
                dmg = ceil(dmg/2)
                countered = global.enemy[rounds].has_psipshield;
                global.enemy[rounds].shieldlife--;
            }
            
            global.custom_dmg = dmg
            
            var a = instance_create(0,0,objBattleMsg);
            if global.enemy[rounds].shieldlife = 0 and (global.enemy[rounds].has_psishield or global.enemy[rounds].has_psipshield) {
                a.strno = 1+countered
                if global.enemy[rounds].has_psishield {
                    a.str[1] = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + "'s psychic shield#   disappeared!";
                } else if global.enemy[rounds].has_psipshield {
                    a.str[1] = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + "'s psychic power shield#   disappeared!";
                }
                if countered {
                    a.str[2] = "...but not before deflecting the attack!"
                }
                global.enemy[rounds].has_psishield = 0
                global.enemy[rounds].has_psipshield = 0
            } else {
                a.strno = countered
                if countered {
                    a.str[1] = "The psychic power shield#   deflected the attack!"
                }
            }
            
            with global.enemy[rounds] { alarm[1] = 2 }
            
            global.enemy[rounds].e_hp -= dmg;
            a.str[0] = string(dmg)+" HP of damage#   to "+global.enemy[rounds].e_art + global.enemy[rounds].e_name + "!";
            
            if countered { en_random_choser_extra(); instance_create(x,y,objCustomDamage) }
            
            instance_create(0,0,objHitEffect)
        } else {
            failed = 1
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            a.str[0] = "It had no effect on "+global.enemy[rounds].e_art + global.enemy[rounds].e_name + "!"
        }
        
        alarm[3] = 1
        rounds++
    }
}

