if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    var stolenmove,movename;
    if command == -1 {
        if random(100) < 80 {
            stolenmove = choose(0,1,4)
        } else {
            stolenmove = choose(2,3,5)
        }
    } else {
        stolenmove = command
    }
    switch stolenmove {
        case 0:
            movename = "normal attack has";
            objBattleController.no_bash[tgt] = 1
            break;
        case 1:
            movename = "goods have"
            objBattleController.no_goods[tgt] = 1
            break;
        case 2:
            movename = "ability to run away has"
            objBattleController.no_run[tgt] = 1
            break;
        case 3:
            movename = "ability to guard has"
            objBattleController.no_guard[tgt] = 1
            break;
        case 4:
            movename = iff(global.psiuser[tgt],"PSI","skills") + " have"
            objBattleController.no_psi[tgt] = 1
            break;
        case 5:
            movename = "special ability has"
            objBattleController.no_special[tgt] = 1
            break;
    }
    audio_play_sound(sndailment,0,0); 
    var a = instance_create(0,0,objBattleMsg);
    a.str[0] = global.s_name[tgt]+"'s "+ movename +" been taken away#   until the next turn!"
    alarm[2] = 1
}

