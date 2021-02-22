/// @description Radiation
if !instance_exists(objBattleMsg) {
    with objVarDamage { instance_destroy() }
    if global.s_radiation[pl] = 1 {
        d = irandom_range(80,153)
        if d >= global.s_hp[pl] {
            instance_create(0,0,objMortalDamage)
            with instance_create(0,0,objBattleMsg) {
                strno = 0;
                str[0] = choose(global.s_name[pl]+" took mortal damage from the radioactive enviroment!",global.s_name[pl]+" took mortal damage from the radiation!")
            }
        } else {
            audio_play_sound(sndbump,0,0)
            with instance_create(0,0,objBattleMsg) {
                strno = 0;
                str[0] = choose("The radiation is playing with the atoms in "+global.s_name[pl]+"'s body!",global.s_name[pl]+" took damage from the radioactive enviroment!");
            }
        }
        global.s_hp -= d
        with instance_create(objHealthBar.x+30,objHealthBar.y,objVarDamage) { dmg = objStatusMaster.d }
        with objHealthBar {
            x = xstart
            y = ystart
            path_start(p_shake,6,0,0)
        }
        alarm[3] = 20
    } else {
        alarm[3] = 1
    } 
} else {
    alarm[2] = 1
}

