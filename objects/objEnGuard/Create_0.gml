with instance_create(0,0,objBattleMsg) {
    str[0] = upper(global.enemy[enmy].e_art)+global.enemy[enmy].e_name + " is now on guard."
    
}
global.enemy[enmy].e_grd  = 2;
alarm[0] = 1;

