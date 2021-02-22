/// @description Shocked
if !instance_exists(objBattleMsg) {
    if global.enemy[enmy].shocked = 1 {
        global.enemy[enmy].numb_timer --;
        if global.enemy[enmy].numb_timer = 0 {
            audio_play_sound(sndheal2,0,0)
            with instance_create(0,0,objBattleMsg) {
                strno = 0;
                str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" got over the shock!"
            }
            global.enemy[enmy].shocked = 0;
        } else {
            if random(100) < 50 {
                with instance_create(0,0,objBattleMsg) {
                    strno = 0;
                    str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+"'s body was knocked back#   because of the shock!"
                }
                skip = 1
                with global.enemy[enmy] { alarm[1] = 2 }
                audio_play_sound(sndenemyhit,0,0)
            }
        }
    }
    alarm[7] = 1
} else {
    alarm[6] = 1
}

