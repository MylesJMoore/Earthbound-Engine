/// @description Solidification
if !instance_exists(objBattleMsg) {
    if global.s_solid[pl] = 1 {
        audio_play_sound(sndheal2,0,0)
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0;
        a.str[0] = choose(global.s_name[pl]+"'s body#   moved freely!",global.s_name[pl]+"'s body#   is no longer solidified!")
        global.s_solid[pl] = 0
        was_solid = 1
        skip = 1
    }
    alarm[4] = 1
} else {
    alarm[3] = 1
}

