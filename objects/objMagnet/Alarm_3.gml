if instance_exists(objMagnetFx) or instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    if type = 0 {
        pp = irandom_range(5,10)
        failed = 0
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        en_random_choser()
        if tgt = global._pl {
            failed = 2
        } else {
            if global.s_pp[tgt]>= pp {
                global.s_pp[global._pl] = min(global.s_pp[global._pl]+pp,global.s_ppmax[global._pl])
                global.s_pp[tgt] -= pp
            } else if global.s_pp[tgt] > 0 and global.s_pp[tgt] < pp {
                pp = global.s_pp[tgt]
                global.s_pp[global._pl] = min(global.s_pp[global._pl]+pp,global.s_ppmax[global._pl])
                global.s_pp[tgt] = 0
            } else { 
                failed = 1
            }
        }
        
        if failed = 0 {
            a.str[0] = "Drained "+string(pp)+" PP#   from "+global.s_name[tgt]+"!"
        } else if failed = 2 {
            a.str[0] = "It had no effect on "+global.s_name[tgt] + "!"
        } else {
            a.str[0] = global.s_name[tgt] + " didn't have any PP!"
        }
        alarm[11] = 1
    } else {
        if rounds > global.pl_count {
            alarm[11] = 1
            exit
        } else {
            if global.dead[rounds] {
                alarm[3] = 1
                rounds++
                exit
            }
            pp = irandom_range(5,10)
            failed = 0
            
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            
            if rounds = global._pl {
                failed = 2
            } else {
                if global.s_pp[rounds]>= pp {
                    global.s_pp[global._pl] = min(global.s_pp[global._pl]+pp,global.s_ppmax[global._pl])
                    global.s_pp[rounds] -= pp
                } else if global.s_pp[rounds] > 0 and global.s_pp[rounds] < pp {
                    pp = global.s_pp[rounds]
                    global.s_pp[global._pl] = min(global.s_pp[global._pl]+pp,global.s_ppmax[global._pl])
                    global.s_pp[rounds] = 0
                } else { 
                    failed = 1
                }
            }
            
            if failed = 0 {
                a.str[0] = "Drained "+string(pp)+" PP#   from "+global.s_name[rounds]+"!"
            } else if failed = 2 {
                a.str[0] = "It had no effect on "+global.s_name[rounds] + "!"
            } else {
                a.str[0] = global.s_name[rounds] + " didn't have any PP!"
            }
            rounds++
            alarm[3] = 1
        }
    }
}

