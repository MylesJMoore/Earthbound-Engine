if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    if type = 0 {
        var pp;
        pp = irandom_range(5,10)
        failed = 0
        random_choser_extra2()
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if tgt = enmy {
            failed = 2
        } else {
            if global.enemy[tgt].e_pp>= pp {
                global.enemy[enmy].e_pp += pp
                global.enemy[tgt].e_pp -= pp
            } else if global.enemy[tgt].e_pp > 0 and global.enemy[tgt].e_pp < pp {
                pp = global.enemy[tgt].e_pp
                global.enemy[enmy].e_pp += pp
                global.enemy[tgt].e_pp = 0
            } else { 
                failed = 1
            }
        }
        
        if failed = 0 {
            a.str[0] = "Drained "+string(pp)+" PP#   from "+global.enemy[tgt].e_art + global.enemy[tgt].e_name +"!";
        } else if failed = 2 {
            a.str[0] = "It did not work#   on "+ global.enemy[tgt].e_art + global.enemy[tgt].e_name + "!";
        } else {
            a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + " didn't have any PP!";
        }
        alarm[11] = 1
    } else {
        if rounds > global.en_count {
            alarm[11] = 1
            exit
        } else {
            if global.enemy[rounds] = 0 {
                alarm[3] = 1
                rounds++
                exit
            }
            var pp;
            pp = irandom_range(5,10)
            failed = 0
            
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            
            if rounds = enmy {
                failed = 2
            } else {
                if global.enemy[rounds].e_pp>= pp {
                    global.enemy[enmy].e_pp += pp
                    global.enemy[rounds].e_pp -= pp
                } else if global.enemy[rounds].e_pp > 0 and global.enemy[rounds].e_pp < pp {
                    pp = global.enemy[rounds].e_pp
                    global.enemy[enmy].e_pp += pp
                    global.enemy[rounds].e_pp = 0
                } else { 
                    failed = 1
                }
            }
            
            if failed = 0 {
                a.str[0] = "Drained "+string(pp)+" PP#   from "+global.enemy[rounds].e_art + global.enemy[rounds].e_name +"!";
            } else if failed = 2 {
                a.str[0] = "It did not work#   on "+ global.enemy[rounds].e_art + global.enemy[rounds].e_name + "!";
            } else {
                    a.str[0] = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + " didn't have any PP!";
            }
            rounds++
            alarm[3] = 1
        }
    }
}

