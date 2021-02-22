/// @description You win message
stat_reset()
global.s_exp[1] += global.totalexp*!global.dead[1];
        
if global.pl_count > 1 {
    global.s_exp[2] += global.totalexp*!global.dead[2];
}
if global.pl_count > 2 {
    global.s_exp[3] += global.totalexp*!global.dead[3];
}
if global.pl_count > 3 {
    global.s_exp[4] += global.totalexp*!global.dead[4];
}

global.money += ceil(global.totalexp/4);

with instance_create(0,0,objBattleMsg) {
    strno = 1;
    str[0] = "YOU WONZ"
    if global.totalexp = 0 {
        str[1] = "It was a nice experience."
    } else {
        switch global.pl_count {
            case 1: 
                str[1] = global.s_name[1]+" got "+string(global.totalexp)+" EXP."; break;
            case 2: 
                if global.dead[1] {
                    str[1] = global.s_name[2]+" got "+string(global.totalexp)+" EXP."; break;
                } else if global.dead[2] {
                    str[1] = global.s_name[1]+" got "+string(global.totalexp)+" EXP."; break;
                } else {
                    str[1] = global.s_name[1]+" and "+global.s_name[2]+" got "+string(global.totalexp)+" EXP."; break;
                }
            case 3:
                if global.dead[1] {
                    if global.dead[2] {
                        str[1] = global.s_name[3]+" got "+string(global.totalexp)+" EXP."; break;
                    } else {
                        str[1] = global.s_name[2]+" and "+global.s_name[3]+" got "+string(global.totalexp)+" EXP."; break;
                    }
                } else if global.dead[2] {
                    if global.dead[1] {
                        str[1] = global.s_name[3]+" got "+string(global.totalexp)+" EXP."; break;
                    } else {
                        str[1] = global.s_name[1]+" and "+global.s_name[3]+" got "+string(global.totalexp)+" EXP."; break;
                    }
                } else if global.dead[3] {
                    if global.dead[1] {
                        str[1] = global.s_name[2]+" got "+string(global.totalexp)+" EXP."; break;
                    } else {
                        str[1] = global.s_name[1]+" and "+global.s_name[2]+" got "+string(global.totalexp)+" EXP."; break;
                    }
                } else {
                    str[1] = global.s_name[1]+" and co. got "+string(global.totalexp)+" EXP."; break;
                }
            case 4: 
                str[1] = "The party got "+string(global.totalexp)+" EXP."; break;
        }
    }
}
if random(100)<=droprate and drop != 0 {
    alarm[2] = 1
} else {
    alarm[3] = 1
}

