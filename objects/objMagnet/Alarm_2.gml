if instance_exists(objMagnetFx) or instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if type = 0 {
        pp = irandom_range(5,10)
        failed = 0
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if global.target[global._pl].e_pp>= pp {
            global.s_pp[global._pl] = min(global.s_pp[global._pl]+pp,global.s_ppmax[global._pl])
            global.target[global._pl].e_pp -= pp
        } else if global.target[global._pl].e_pp > 0 and global.target[global._pl].e_pp < pp {
            pp = global.target[global._pl].e_pp
            global.s_pp[global._pl] = min(global.s_pp[global._pl]+pp,global.s_ppmax[global._pl])
            global.target[global._pl].e_pp = 0
        } else { 
            failed = 1
        }
        
        if !failed {
            a.str[0] = "Drained "+string(pp)+" PP#   from "+global.target[global._pl].e_art + global.target[global._pl].e_name +"!"
        } else {
            a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + " didn't have any PP!"
        }
        alarm[11] = 1
    } else {
        if rounds > global.en_count {
            alarm[11] = 1
            exit
        } else {
            if global.enemy[rounds] = 0 {
                alarm[2] = 1
                rounds++
                exit
            }
            pp = irandom_range(5,10)
            failed = 0
            
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            
            if global.enemy[rounds].e_pp>= pp {
                global.s_pp[global._pl] = min(global.s_pp[global._pl]+pp,global.s_ppmax[global._pl])
                global.enemy[rounds].e_pp -= pp
            } else if global.enemy[rounds].e_pp > 0 and global.target[global._pl].e_pp < pp {
                pp = global.enemy[rounds].e_pp
                global.s_pp[global._pl] = min(global.s_pp[global._pl]+pp,global.s_ppmax[global._pl])
                global.enemy[rounds].e_pp = 0
            } else { 
                failed = 1
            }
            
            if !failed {
                a.str[0] = "Drained "+string(pp)+" PP#   from "+global.enemy[rounds].e_art + global.enemy[rounds].e_name +"!"
            } else {
                a.str[0] = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + " didn't have any PP!"
            }
            rounds++
            alarm[2] = 1
        }
    }
}

