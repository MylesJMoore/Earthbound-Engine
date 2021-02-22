var a = instance_create(0,0,objBattleMsg);
if !psi { audio_play_sound(sndeattack,0,0); } else { audio_play_sound(sndepsi,0,0); }
a.typesound = typesound

if !global.enemy[enmy].strange {
    for (var i=0;i<array_length_1d(global.custom_msg);i++) {
        a.str[i] = global.custom_msg[i]
    }
} else {
    a.strno = 1;
    a.str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" is feeling a little strange...";
    for (var i=0;i<array_length_1d(global.custom_msg);i++) {
        a.str[i+1] = global.custom_msg[i]
    }
}

alarm[1] = 1;

