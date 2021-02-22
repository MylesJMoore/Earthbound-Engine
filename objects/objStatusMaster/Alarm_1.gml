/// @description Infection
if !instance_exists(objBattleMsg) {
    with objVarDamage { instance_destroy() }
    if global.s_infected[pl] = 1 {
        var a = instance_create(0,0,objBattleMsg);
        dmg = 40+irandom_range(-10,10)
        if dmg >= global.s_hp[pl] {
            instance_create(0,0,objMortalDamage)
            a.strno = 0;
            a.str[0] = global.s_name[pl]+" felt pain from the "+choose("biohazard","infection","infectious agent","pathogen")+"#   and took "+string(dmg)+" HP of mortal damage!"
        } else {
            audio_play_sound(sndbump,0,0)
            a.strno = 0;
            a.str[0] = global.s_name[pl]+" felt pain from the "+choose("biohazard","infection","infectious agent","pathogen")+"#   and took "+string(dmg)+" HP of damage!"
        }
        with global.healthbar[pl] {
            x = xstart
            y = ystart
            path_start(p_shake,6,0,0)
        }
        global.s_hp[pl] -= dmg
        alarm[2] = 1
    } else {
        alarm[2] = 1
    }  
} else {
    alarm[1] = 1
}

