audio_play_sound(sndpattack,0,0)

with instance_create(0,0,objBattleMsg) {
    if !global.s_strange[global._pl] {
        strno = 0;
        str[0] = "It's " + global.s_name[global._pl] + "'s attack!"
    } else {
        strno = 1;
        str[0] = global.s_name[global._pl] + " is feeling a little strange..."
        str[1] = "It's " + global.s_name[global._pl] + "'s attack!"
    }
}
alarm[0] = 1;

