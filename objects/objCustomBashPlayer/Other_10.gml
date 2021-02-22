audio_play_sound(sndpattack,0,0)

var a;
a = instance_create(0,0,objBattleMsg) 

if !global.s_strange[global._pl] {
    a.strno = 0;
    a.str[0] = global.custom_msg[0];
} else {
    strno = 1;
    a.str[0] = global.s_name[global._pl] + " is feeling a little strange...";
    a.str[1] = global.custom_msg[0];
}

alarm[0] = 1;

