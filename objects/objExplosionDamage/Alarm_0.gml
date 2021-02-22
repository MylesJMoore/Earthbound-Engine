if rounds > global.pl_count {
    instance_destroy()
} else {
    if !global.dead[rounds] { 
        var resist = global.fire_resistance[rounds];
        
        dmg = irandom_range(150,400)
        dmg = ceil(dmg*(100-30*resist)/100)
        
        with objBattleMsg { instance_destroy() }
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if resist !=4 {
            with global.healthbar[rounds] {
                x = xstart
                y = ystart
                path_start(p_shake,6,0,0)
            }
        
            if dmg >= global.s_hp[rounds] {
                instance_create(0,0,objMortalDamage)
                a.str[0] = string(dmg)+" HP of mortal damage#   to "+global.s_name[rounds] + "!";
            } else {
                audio_play_sound(sndbump,0,0)
                a.str[0] = string(dmg)+" HP of damage#   to "+global.s_name[rounds] + "!";
            }
            global.s_hp[rounds] -= dmg
        } else {
            a.str[0] = "It had no effect on "+global.s_name[rounds] + "!";
        }
        alarm[0] = room_speed
    } else {
        alarm[0] = 1
    }
    rounds++
}

