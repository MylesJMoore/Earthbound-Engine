/// @description Asleep
if !instance_exists(objBattleMsg) {
    if global.enemy[enmy].asleep = 1 {
        var a = instance_create(0,0,objBattleMsg);
        if random(100)<25 and global.enemy[enmy].sleep_timer < 1 {
            a.strno = 0;
            audio_play_sound(sndheal2,0,0)
            a.str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" woke up!"
            global.enemy[enmy].asleep = 0;
        } else {
            a.strno = 0;
            a.str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" is fast asleep!"
            global.enemy[enmy].sleep_timer--;
            skip = 1
        }
    }
    alarm[8] = 1
} else {
    alarm[7] = 1
}

