if instance_exists(objThunderFx){
    alarm[3] = 1
} else {
    randomize()
    var msg,countered,resist;
    if !backfire {
        resist = global.target[global._pl].thunder_resistance; 
    } else { 
        en_random_choser();
        resist = global.thunder_resistance[tgt]; 
    }
    
    dmg = ceil(dmg*(100-30*resist)/100)
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0
    if !backfire {
        if !nohit {
            if resist !=4 {
                with global.target[global._pl] { alarm[1] = 2 }
                global.target[global._pl].e_hp -= dmg;
                a.str[0] = string(dmg)+" HP of damage#   to "+global.target[global._pl].e_art + global.target[global._pl].e_name + "!"
                instance_create(0,0,objHitEffect)
            } else {
                a.str[0] = "It had no effect on "+global.target[global._pl].e_art + global.target[global._pl].e_name + "!"
                }
        } else {
            a.str[0] = "It didn't hit anyone!"
        }
    } else {
        if !nohit {
            if resist !=4 {
                with global.healthbar[tgt] {
                    x = xstart
                    y = ystart
                    path_start(p_shake,6,0,0)
                }
                
                if dmg >= global.s_hp[tgt] {
                    instance_create(0,0,objMortalDamage)
                    msg = string(dmg)+" HP of mortal damage#   to "+global.s_name[tgt] + "!"
                } else {
                    audio_play_sound(sndbump,0,0)
                    msg = string(dmg)+" HP of damage#   to "+global.s_name[tgt] + "!"
                }
                
                global.s_hp[tgt] -= dmg
                a.str[0] = msg;
            } else {
                a.str[0] = "It had no effect on "+global.s_name[tgt] + "!"
            }
        } else {
            a.str[0] = "It didn't hit anyone!"
        }
    }
    rounds++
    alarm[2] = 1
}

