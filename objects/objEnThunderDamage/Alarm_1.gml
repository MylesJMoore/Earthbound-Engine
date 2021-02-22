if backfire { 
    random_choser_extra();
    resist = global.enemy[enmy].thunder_resistance; 
} else { 
    en_random_choser();
    resist = global.thunder_resistance[tgt]; 
}
thunder_damage()
dmg = ceil(dmg*(100-30*resist)/100)

if !backfire {
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0
    if !nohit {
        if resist != 4 {
            with global.healthbar[tgt] {
                x = xstart
                y = ystart
                path_start(p_shake,6,0,0)
            }
            
            if dmg >= global.s_hp[tgt] {
                instance_create(0,0,objMortalDamage)
                msg = string(dmg)+" HP of mortal damage#   to "+global.s_name[tgt] + "!";
            } else {
                audio_play_sound(sndbump,0,0)
                msg = string(dmg)+" HP of damage#   to "+global.s_name[tgt] + "!";
            }
            
            global.s_hp[tgt] -= dmg
            a.str[0] = msg;
        } else {
            a.str[0] = "It had no effect on "+global.s_name[tgt] + "!";
        }
    } else {
        a.str[0] = "It didn't hit anyone!"
    }
} else {
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0
    if !nohit {
        if resist !=4 {
            with global.enemy[enmy] { alarm[1] = 2 }
            global.enemy[enmy].e_hp -= dmg;
            a.str[0] = string(dmg)+" HP of damage#   to "+global.enemy[enmy].e_art + global.enemy[enmy].e_name + "!";
            instance_create(0,0,objHitEffect)
        } else {
            a.str[0] = "It had no effect on "+global.enemy[enmy].e_art + global.enemy[enmy].e_name + "!";
        }
    } else {
        a.str[0] = "It didn't hit anyone!"
    }
}
alarm[11] = 1

