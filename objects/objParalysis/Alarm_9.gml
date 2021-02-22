if instance_exists(objBattleMsg) {
    alarm[9] = 1
} else {
    var a;
    a = instance_create(0,0,objBattleMsg); 
    a.strno = 0;
    a.str[0] = "...But it didn't work very well!";
    alarm[11] = 1
}

