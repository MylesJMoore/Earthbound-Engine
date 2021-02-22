/// @description Kill the players
if instance_exists(objBattleMsg) {
    alarm[5] = 1
    exit
} else {
    
    if rounds < global.pl_count+1 { 
        if global.healthbar[rounds].hp_actual <= 0 and !global.dead[rounds] {
            global.dead[rounds] = 1
            audio_play_sound(snddie,0,0)
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0;
            a.str[0] = global.s_name[rounds] + " got hurt and collapsed!"
        }
        rounds++
        alarm[5] = 1
    } else {
        alarm[9] = 1
    }
}

