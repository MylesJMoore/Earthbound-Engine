/// @description Solidified
if !instance_exists(objBattleMsg) {
    if global.enemy[enmy].solids = 1 {
        audio_play_sound(sndheal2,0,0)
        with instance_create(0,0,objBattleMsg) {
            strno = 0;
            str[0] = choose(upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+"'s body#   moved freely!",upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+"'s body#   is no longer solidified!") 
        }
        global.enemy[enmy].solids = 0
        skip = 1
        was_solid = 1
    }
    alarm[4] = 1
} else {
    alarm[3] = 1
}

