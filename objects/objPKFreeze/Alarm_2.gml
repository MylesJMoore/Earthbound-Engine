if instance_exists(objFreezeFx){
    alarm[2] = 1
} else {
    randomize()
    var msg,countered,resist;
    countered = 0
    if !backfire { 
        resist = global.target[global._pl].freeze_resistance; 
    } else { 
        en_random_choser();
        resist = global.freeze_resistance[tgt]; 
    }
    
    dmg = ceil(dmg*(100-30*resist)/100)
    
    if !backfire {
        if resist !=4 {
            if global.target[global._pl].has_psishield or global.target[global._pl].has_psipshield {
                dmg = ceil(dmg/2)
                countered = global.target[global._pl].has_psipshield;
                global.target[global._pl].shieldlife--;
            }
            
            global.custom_dmg = dmg
            
            var a = instance_create(0,0,objBattleMsg);
            if global.target[global._pl].shieldlife = 0 and (global.target[global._pl].has_psishield or global.target[global._pl].has_psipshield) {
                a.strno = 1+countered
                if global.target[global._pl].has_psishield {
                    a.str[1] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + "'s psychic shield#   disappeared!"
                } else if global.target[global._pl].has_psipshield {
                    a.str[1] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + "'s psychic power shield#   disappeared!"
                }
                if countered {
                    a.str[2] = "...but not before deflecting the attack!"
                }
                global.target[global._pl].has_psishield = 0
                global.target[global._pl].has_psipshield = 0
            } else {
                a.strno = countered
                if countered {
                    a.str[1] = "The psychic power shield deflected the attack!"
                }
            }
            
            with global.target[global._pl] { alarm[1] = 2 }
            
            global.target[global._pl].e_hp -= dmg;
            a.str[0] = string(dmg)+" HP of damage#   to "+global.target[global._pl].e_art + global.target[global._pl].e_name + "!"
            
            if countered { instance_create(x,y,objCustomDamage) }
            
            instance_create(0,0,objHitEffect)
        } else {
            failed = 1
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            a.str[0] = "It had no effect on "+global.target[global._pl].e_art + global.target[global._pl].e_name + "!"
        }
    } else {
        if resist !=4 {
            with global.healthbar[tgt] {
                x = xstart
                y = ystart
                path_start(p_shake,6,0,0)
            }
        
            if global.has_psishield[tgt] or global.has_psipshield[tgt] {
                dmg = ceil(dmg/2)
                countered = global.has_psipshield[tgt];
                global.s_shieldlife[tgt]--;
            }
            
            global.custom_dmg = dmg;
            
            var b = instance_create(0,0,objBattleMsg);
            if global.s_shieldlife[tgt] = 0 and (global.has_psishield[tgt] or global.has_psipshield[tgt]) {
                b.strno = 1+countered
                if global.has_psishield[tgt] {
                    b.str[1] = global.s_name[tgt] + "'s psychic shield#   disappeared!"
                } else if global.has_psipshield[tgt] {
                    b.str[1] = global.s_name[tgt] + "'s psychic power shield#   disappeared!"
                }
                if countered {
                    b.str[2] = "...but not before deflecting the attack!"
                }
                global.has_psishield[tgt] = 0
                global.has_psipshield[tgt] = 0
            } else {
                b.strno = countered
                if countered {
                    b.str[1] = "The psychic power shield deflected the attack!"
                }
            }
        
            if dmg >= global.s_hp[tgt] {
                instance_create(0,0,objMortalDamage)
                msg = string(dmg)+" HP of mortal damage#   to "+global.s_name[tgt] + "!"
            } else {
                audio_play_sound(sndbump,0,0)
                msg = string(dmg)+" HP of damage#   to "+global.s_name[tgt] + "!"
            }
            
            global.s_hp[tgt] -= dmg
            b.str[0] = msg;
            
            if countered { random_choser_extra(); instance_create(x,y,objEnCustomDamage) }
        } else {
            failed = 1
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            a.str[0] = "It had no effect on "+global.s_name[tgt] + "!";
        }
    }

    alarm[10] = 1
}

