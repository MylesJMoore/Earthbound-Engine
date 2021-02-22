/// @description Message
if showmsg {
    audio_play_sound(sndeattack,0,0);
    with instance_create(0,0,objBattleMsg) {
        if !global.enemy[enmy].strange {
            strno = 0;
            str[0] = global.custom_msg[0];
        } else {
            strno = 1;
            str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" is feeling a little strange..."
            str[1] = global.custom_msg[0];
        }
    }
}

alarm[0] = 1;

