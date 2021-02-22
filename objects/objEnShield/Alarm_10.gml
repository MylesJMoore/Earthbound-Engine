if instance_exists(objBattleMsg) {
    alarm[10] = 1
} else {
    var a;
    a = instance_create(0,0,objBattleMsg); 
    a.strno = 0;
    if global.enemy[enmy].cantconcentrate {
        a.str[0] = "...But it didn't work very well!"
    } else {
        a.str[0] = "...But "+(global.enemy[enmy].e_pron)+" didn't have enough PP."
    }
    alarm[11] = 1
}

