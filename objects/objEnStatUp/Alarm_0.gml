var a,b;
a = instance_create(0,0,objBattleMsg); 

switch type {
    case 0: b = "["; break;
    case 1: b = "_"; break;
}

switch stat {
    case 0:
        _stat = "Offense"
        break;
    case 1:
        _stat = "Defense"
        break;
    case 2:
        _stat = "Guts"
        break;
}

if !global.enemy[enmy].strange {
    a.strno = 0;
    if global.custom_msg != 0 { a.str[0] = global.custom_msg[0]; audio_play_sound(sndeattack,0,0); } 
    else { a.str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" tried "+_stat+" Up "+b+"!"; audio_play_sound(sndepsi,0,0);}
} else {
    a.strno = 1;
    a.str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" is feeling a little strange...";
    if global.custom_msg != 0 or notpsi { a.str[1] = global.custom_msg[0]; audio_play_sound(sndeattack,0,0); } 
    else { a.str[1] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" tried "+_stat+" Up "+b+"!"; audio_play_sound(sndepsi,0,0); }
}

if global.enemy[enmy].e_pp > 0 and !global.enemy[enmy].cantconcentrate or notpsi {
    backfire = (global.enemy[enmy].strange and random(100) < 50)
    alarm[1] = 1
} else {
    alarm[10] = 1
}

