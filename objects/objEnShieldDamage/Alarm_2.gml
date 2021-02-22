if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if type = 0 {
        var msg,a;
        a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        random_choser()
        switch kind {
            case 0:
                if !global.enemy[enmy].has_shield {
                    msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + "'s body was protected by#   the shield of light!"
                    global.enemy[enmy].has_shield  = 1
                } else {
                    msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + "'s shield became stronger!"
                }
                global.enemy[enmy].has_pshield          = 0
                global.enemy[enmy].has_psishield        = 0
                global.enemy[enmy].has_psipshield       = 0
                break;
            case 1:
                if !global.enemy[enmy].has_pshield {
                    msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + "'s body was protected by#   the power shield!"
                    global.enemy[enmy].has_pshield  = 1
                } else {
                    msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + "'s power shield became stronger!"
                }
                global.enemy[enmy].has_shield          = 0
                global.enemy[enmy].has_psishield        = 0
                global.enemy[enmy].has_psipshield       = 0
                break;
            case 2:
                if !global.enemy[enmy].has_psishield {
                    msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + "'s body was protected by#   the psychic shield!"
                    global.enemy[enmy].has_psishield  = 1
                } else {
                    msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + "'s psychic shield became stronger!"
                }
                global.enemy[enmy].has_shield          = 0
                global.enemy[enmy].has_pshield        = 0
                global.enemy[enmy].has_psipshield       = 0
                break;
            case 3:
                if !global.enemy[enmy].has_psipshield {
                    msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + "'s body was protected by#   the psychic power shield!"
                    global.enemy[enmy].has_psipshield  = 1
                } else {
                    msg = upper(global.enemy[enmy].e_art) + global.enemy[enmy].e_name + "'s psychic power shield became stronger!"
                }
                global.enemy[enmy].has_shield          = 0
                global.enemy[enmy].has_pshield        = 0
                global.enemy[enmy].has_psishield       = 0
                break;
                
        }
        global.enemy[enmy].shieldlife = 3
        
        a.str[0] = msg
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
            var msg,a;
            a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            switch kind {
                case 0:
                    if !global.enemy[rounds].has_shield {
                        msg = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + "'s body was protected by#   the shield of light!"
                        global.enemy[rounds].has_shield  = 1
                    } else {
                        msg = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + "'s shield became stronger!"
                    }
                    global.enemy[rounds].has_pshield          = 0
                    global.enemy[rounds].has_psishield        = 0
                    global.enemy[rounds].has_psipshield       = 0
                    break;
                case 1:
                    if !global.enemy[rounds].has_pshield {
                        msg = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + "'s body was protected by#   the power shield!"
                        global.enemy[rounds].has_pshield  = 1
                    } else {
                        msg = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + "'s power shield became stronger!"
                    }
                    global.enemy[rounds].has_shield          = 0
                    global.enemy[rounds].has_psishield        = 0
                    global.enemy[rounds].has_psipshield       = 0
                    break;
                case 2:
                    if !global.enemy[rounds].has_psishield {
                        msg = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + "'s body was protected by#   the psychic shield!"
                        global.enemy[rounds].has_psishield  = 1
                    } else {
                        msg = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + "'s psychic shield became stronger!"
                    }
                    global.enemy[rounds].has_shield          = 0
                    global.enemy[rounds].has_pshield        = 0
                    global.enemy[rounds].has_psipshield       = 0
                    break;
                case 3:
                    if !global.enemy[rounds].has_psipshield {
                        msg = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + "'s body was protected by#   the psychic power shield!"
                        global.enemy[rounds].has_psipshield  = 1
                    } else {
                        msg = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + "'s psychic power shield became stronger!"
                    }
                    global.enemy[rounds].has_shield          = 0
                    global.enemy[rounds].has_pshield        = 0
                    global.enemy[rounds].has_psishield       = 0
                    break;
                    
            }
            a.str[0] = msg
            global.enemy[rounds].shieldlife = 3
            rounds++
            alarm[2] = 1
        }
    }
}



