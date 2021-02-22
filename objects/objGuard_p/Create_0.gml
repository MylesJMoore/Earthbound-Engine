with instance_create(0,0,objBattleMsg) {
    strno = 0;
    str[0] = global.s_name[global._pl] + " is now on guard."
    global.s_guard[global._pl]  = 2;
}
alarm[0] = 1;

