if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    with global.healthbar[global._pl] {
        x = xstart
        y = ystart
        path_start(p_shake,6,0,0)
    }
    
    dmg = global.custom_dmg
    
    if dmg >= global.s_hp[global._pl] {
        instance_create(0,0,objMortalDamage)
        msg = string(dmg)+" HP of mortal damage#   to "+global.s_name[global._pl] + "!"
    } else {
        audio_play_sound(sndbump,0,0)
        msg = string(dmg)+" HP of damage#   to "+global.s_name[global._pl] + "!"
    }
    
    global.s_hp[global._pl] -= dmg
    
    var a = instance_create(0,0,objBattleMsg);
    a.strno = 0;
    a.str[0] = msg;
    
    alarm[0] = 1
}

