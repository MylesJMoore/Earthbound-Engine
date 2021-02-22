/// @description Asleep
if !instance_exists(objBattleMsg) {
    if global.s_asleep[pl] = 1 {
        var a = instance_create(0,0,objBattleMsg);
        if random(100)<25 and global.sleep_timer[pl] < 1{
            audio_play_sound(sndheal2,0,0)
            a.strno = 0;
            a.str[0] = global.s_name[pl]+" woke up!"
            global.s_asleep[pl] = 0;
        } else {
            a.strno = 0;
            global.sleep_timer[pl]--;
            a.str[0] = global.s_name[pl]+" is fast asleep!"
            skip = 1
        }
    }
    alarm[8] = 1
} else {
    alarm[7] = 1
}

