/// @description Enemy drops
if instance_exists(objBattleMsg) {
    alarm[6] = 1
    exit
} else {
    if drop = 0 {
        audio_play_sound(sndpresent,0,0)
        with instance_create(0,0,objBattleMsg) {
            strno = 1;
            str[0] = objBattleController.dropenemyname + " dropped a present!";
            str[1] = "Inside the present,#   there was "+global.item[objBattleController.drop,17]+global.item[objBattleController.drop,1]+"!";
        }
        drop = 1
        alarm[6] = 1
    } else {
        var a;
        a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        b = add_item_ext(objBattleController.drop);
        if b = -1 {
            if global.pl_count = 1 {
                a.str[0] = "But "+global.s_name[1]+" was carrying too much stuff already,#   so it was sent to the storage instead."
            } else {
                a.str[0] = "But everyone was carrying too much stuff already,#   so it was sent to the storage instead."
            }
            add_item_storage(objBattleController.drop);
        } else {
            a.str[0] = global.s_name[b+1]+" took it."
            audio_play_sound(snditemget1,0,0)
        }
        alarm[10] = 1
    }
}   

