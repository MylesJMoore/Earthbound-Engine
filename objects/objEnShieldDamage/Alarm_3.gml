if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if type = 0 {
        var msg,a;
        a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        en_random_choser();
        
        switch kind {
            case 0:
                if !global.has_shield[tgt] {
                    msg = global.s_name[tgt] + "'s body was protected by#   the shield of light!"
                    global.has_shield[tgt]  = 1
                } else {
                    msg = global.s_name[tgt] + "'s shield became stronger!"
                }
                global.has_pshield[tgt]          = 0
                global.has_psishield[tgt]        = 0
                global.has_psipshield[tgt]       = 0
                break;
            case 1:
                if !global.has_pshield[tgt] {
                    msg = global.s_name[tgt] + "'s body was protected by#   the power shield!"
                    global.has_pshield[tgt]  = 1
                } else {
                    msg = global.s_name[tgt] + "'s power shield became stronger!"
                }
                global.has_shield[tgt]          = 0
                global.has_psishield[tgt]        = 0
                global.has_psipshield[tgt]       = 0
                break;
            case 2:
                if !global.has_psishield[tgt] {
                    msg = global.s_name[tgt] + "'s body was protected by#   the psychic shield!"
                    global.has_psishield[tgt]  = 1
                } else {
                    msg = global.s_name[tgt] + "'s psychic shield became stronger!"
                }
                global.has_shield[tgt]          = 0
                global.has_pshield[tgt]        = 0
                global.has_psipshield[tgt]       = 0
                break;
            case 3:
                if !global.has_psipshield[tgt] {
                    msg = global.s_name[tgt] + "'s body was protected by#   the psychic power shield!"
                    global.has_psipshield[tgt]  = 1
                } else {
                    msg = global.s_name[tgt] + "'s psychic power shield became stronger!"
                }
                global.has_shield[tgt]          = 0
                global.has_pshield[tgt]        = 0
                global.has_psishield[tgt]       = 0
                break;
                
        }
        global.s_shieldlife[tgt]         = 3
        
        a.str[0] = msg
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
            var msg,a;
            a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            switch kind {
                case 0:
                    if !global.has_shield[rounds] {
                        msg = global.s_name[rounds] + "'s body was protected by#   the shield of light!"
                        global.has_shield[rounds]  = 1
                    } else {
                        msg = global.s_name[rounds] + "'s shield became stronger!"
                    }
                    global.has_pshield[rounds]          = 0
                    global.has_psishield[rounds]        = 0
                    global.has_psipshield[rounds]       = 0
                    break;
                case 1:
                    if !global.has_pshield[rounds] {
                        msg = global.s_name[rounds] + "'s body was protected by#   the power shield!"
                        global.has_pshield[rounds]  = 1
                    } else {
                        msg = global.s_name[rounds] + "'s power shield became stronger!"
                    }
                    global.has_shield[rounds]          = 0
                    global.has_psishield[rounds]        = 0
                    global.has_psipshield[rounds]       = 0
                    break;
                case 2:
                    if !global.has_psishield[rounds] {
                        msg = global.s_name[rounds] + "'s body was protected by#   the psychic shield!"
                        global.has_psishield[rounds]  = 1
                    } else {
                        msg = global.s_name[rounds] + "'s psychic shield became stronger!"
                    }
                    global.has_shield[rounds]          = 0
                    global.has_pshield[rounds]        = 0
                    global.has_psipshield[rounds]       = 0
                    break;
                case 3:
                    if !global.has_psipshield[rounds] {
                        msg = global.s_name[rounds] + "'s body was protected by#   the psychic power shield!"
                        global.has_psipshield[rounds]  = 1
                    } else {
                        msg = global.s_name[rounds] + "'s psychic power shield became stronger!"
                    }
                    global.has_shield[rounds]          = 0
                    global.has_pshield[rounds]        = 0
                    global.has_psishield[rounds]       = 0
                    break;
                    
            }
            a.str[0] = msg
            global.s_shieldlife[rounds]         = 3
            rounds++
            alarm[2] = 1
        }
    }
}

