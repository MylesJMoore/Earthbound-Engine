/// @description Facing the other way
if !instance_exists(objBattleMsg) {
    if global.enemy[enmy].turned_around == 1 {
        with instance_create(0,0,objBattleMsg) {
            strno = 0;
            str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name+" turned around!"
        }
        skip = 1;
        global.enemy[enmy].turned_around = 0;
        global.enemy[enmy].image_index = 0;
    }
    alarm[11] = 1
} else {
    alarm[10] = 1
}

