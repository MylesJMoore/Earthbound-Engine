/// @description Crying
if !instance_exists(objBattleMsg) {
    if global.enemy[enmy].crying = 1 {
        if random(160)<10 {
            audio_play_sound(sndheal2,0,0)
            with instance_create(0,0,objBattleMsg) {
                strno = 0;
                str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" stopped crying!"
            }
            global.enemy[enmy].crying = 0
        }
    }
    alarm[6] = 1
} else {
    alarm[5] = 1
}

