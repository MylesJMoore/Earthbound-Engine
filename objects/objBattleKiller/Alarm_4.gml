/// @description Win the battle else try to kill the players
if instance_exists(objBattleMsg) or instance_exists(parLastAction) {
    alarm[4] = 1
    exit
} else {
    if global.enemy[1] = 0 and global.enemy[2] = 0 and global.enemy[3] = 0 and global.enemy[4] = 0 and global.enemy[5] = 0 {
        //With no enemies left, there is no one to battle.
        stat_reset()
        audio_stop_all()
        if !global.boss { audio_play_sound(sndwin,1,0) } else { audio_play_sound(sndwinboss,1,0) }
        
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
        if random(100)<=objBattleController.droprate and objBattleController.drop != 0 {
            alarm[6] = 1
        } else {
            alarm[10] = 1
        }
    } else {
        //Keep the battle going.
        alarm[5] = 1
    }
}

