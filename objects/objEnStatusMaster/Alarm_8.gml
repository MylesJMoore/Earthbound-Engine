/// @description Can't concentrate
if !instance_exists(objBattleMsg) {
    if global.enemy[enmy].cantconcentrate {
        global.enemy[enmy].conc_timer--;
        if global.enemy[enmy].conc_timer <= 0 {
            audio_play_sound(sndheal2,0,0)
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0;
            a.str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" was able to#   concentrate again!"
            global.enemy[enmy].cantconcentrate = 0;
        }
    }
    alarm[10] = 1
} else {
    alarm[8] = 1
}

