if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if type = 0 {
        var pp;
        pp = irandom_range(5,10)
        failed = 0
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        en_random_choser()
        if global.s_pp[tgt]>= pp {
            global.enemy[enmy].e_pp += pp
            global.s_pp[tgt] -= pp
        } else if global.s_pp[tgt] > 0 and global.s_pp[tgt] < pp {
            pp = global.s_pp[tgt]
            global.enemy[enmy].e_pp += pp
            global.s_pp[tgt] = 0
        } else { 
            failed = 1
        }
        
        if failed = 0 {
            a.str[0] = "Drained "+string(pp)+" PP#   from "+global.s_name[tgt]+"!";
        } else {
            a.str[0] = global.s_name[tgt] + " didn't have any PP!";
        }
        alarm[11] = 1
    } else {
        if rounds > global.pl_count {
            alarm[11] = 1
            exit
        } else {
            if global.dead[rounds] {
                alarm[2] = 1
                rounds++
                exit
            }
            var pp;
            pp = irandom_range(5,10)
            failed = 0
            
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            
            if global.s_pp[rounds]>= pp {
                global.enemy[enmy].e_pp += pp
                global.s_pp[rounds] -= pp
            } else if global.s_pp[rounds] > 0 and global.s_pp[rounds] < pp {
                pp = global.s_pp[rounds]
                global.enemy[enmy].e_pp += pp
                global.s_pp[rounds] = 0
            } else { 
                failed = 1
            }
            
            if failed = 0 {
                a.str[0] = "Drained "+string(pp)+" PP#   from "+global.s_name[rounds]+"!";
            } else {
                a.str[0] = global.s_name[rounds] + " didn't have any PP!";
            }
            rounds++
            alarm[2] = 1
        }
    }
}

