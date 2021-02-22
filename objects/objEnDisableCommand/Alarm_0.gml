audio_play_sound(sndeattack,0,0);
en_random_choser();
var a =  instance_create(0,0,objBattleMsg);
    if !global.enemy[enmy].strange {
        if global.custom_msg = 0 {
            a.str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" tried to steal#   one of "+global.s_name[tgt]+"'s moves!"
        } else {
            a.str[0] = global.custom_msg[0]
        }
    } else {
        a.str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" is feeling a little strange..."
        if global.custom_msg = 0 {
            a.str[1] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" tried to steal#   one of "+global.s_name[tgt]+"'s moves!"
        } else {
            a.str[1] = global.custom_msg[0]
        }
    }

alarm[1] = 1;

