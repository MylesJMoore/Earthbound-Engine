/// @description Poison
write_line("Status master for player "+string(pl)+" created.")
global.current_inv = pl-1
if !global.s_poison[pl] and !global.s_infected[pl] and !global.s_solid[pl] and !global.s_numb[pl] and !global.s_crying[pl] and !global.s_shocked[pl] and !global.s_asleep[pl] and !global.s_cantconcentrate[pl] {
    alarm[11] = 1
} else {
    if global.s_poison[pl] = 1 {
        var a = instance_create(0,0,objBattleMsg);
        dmg = 20+irandom_range(-5,5)
        if dmg >= global.s_hp[pl] {
            instance_create(0,0,objMortalDamage)
            a.strno = 0;
            a.str[0] = global.s_name[pl]+" felt pain from the poison#   and took "+string(dmg)+" HP of mortal damage!"
        } else {
            audio_play_sound(sndbump,0,0)
            a.strno = 0;
            a.str[0] = global.s_name[pl]+" felt pain from the poison#   and took "+string(dmg)+" HP of damage!"
        }
        with global.healthbar[pl] {
            x = xstart
            y = ystart
            path_start(p_shake,6,0,0)
        }
        global.s_hp[pl] -= dmg
        alarm[1] = 1
    } else {
        alarm[1] = 1
    }
}

