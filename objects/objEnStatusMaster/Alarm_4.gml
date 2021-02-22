/// @description Numb
if !instance_exists(objBattleMsg) {
    if global.enemy[enmy].numb = 1 {
        global.enemy[enmy].numb_timer --;
        if global.enemy[enmy].numb_timer <= 0 {
            audio_play_sound(sndheal2,0,0)
            with instance_create(0,0,objBattleMsg) {
                strno = 0;
                str[0] = choose("The "+choose("numbness","paralysis")+" faded from#   "+global.enemy[enmy].e_art+global.enemy[enmy].e_name+"'s body!")
            }
            global.enemy[enmy].numb = 0;
        } else {            
            //Skip turns 75% of the time
            if random(100)<75 {
                var a = instance_create(0,0,objBattleMsg);
                a.strno = 0;
                if !was_solid {
                    a.str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+"'s body is "+choose("numb","paralysed")+"#   and can't move!"
                } else {
                    a.str[0] = "...but the "+choose("numbness","paralysis")+"#   is still too strong!"
                }
                skip = 1
            }
        }
    }
    alarm[5] = 1
} else {
    alarm[4] = 1
}

