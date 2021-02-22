lifeup = custom_ppup;
//lifeup += choose(-1,1)*ceil(lifeup*0.25)

if (lifeup+global.s_pp[global.target[global._pl]]) > global.s_ppmax[global.target[global._pl]] {
    lifeup = global.s_ppmax[global.target[global._pl]]-global.s_pp[global.target[global._pl]];
}

if lifeup = 0 {
    noheal = 1;
}

if global.target[global._pl] = global._pl {
    str = global.s_name[global._pl] + " had the "+objItemPPUp.s+"!"
    str_str = global.s_name[global._pl] + " tried to have the "+objItemPPUp.s+"!"
} else {
    str = global.s_name[global._pl] + " gave "+ global.s_name[global.target[global._pl]]+" the "+objItemPPUp.s+"!"
    str_str = global.s_name[global._pl] + " tried to give "+ global.s_name[global.target[global._pl]]+" the "+objItemPPUp.s+"!"
}

if global.healthbar[global._pl].hp_actual > 0 {
    if !noheal {
        if !global.dead[global.target[global._pl]] {
            with instance_create(0,0,objBattleMsg) {
                if !global.s_strange[global._pl] {
                    strno = 0;
                    str[0] = objItemPPUp.str
                } else {
                    if random(100) <= 33 {
                        strno = 2;
                        objItemPPUp.noheal = 1
                    } else {
                        strno = 1;
                    }
                    str[0] = global.s_name[global._pl] + " is feeling a little strange..."
                    str[1] = objItemPPUp.str_str
                    str[2] = global.s_name[global._pl] + " threw the "+objItemPPUp.s+" away instead!"
                }
            }
            alarm[0] = 1
        } else {
            with instance_create(0,0,objBattleMsg) {
                if !global.s_strange[global._pl] {
                    strno = 1;
                    str[0] = objItemPPUp.str
                    str[1] = "...but it was already too late for "+global.s_name[global.target[global._pl]]+"."
                } else {
                    strno = 2;
                    str[0] = global.s_name[global._pl] + " is feeling a little strange..."
                    str[1] = objItemPPUp.str_str
                    if random(100) <= 33 {
                        str[2] = global.s_name[global._pl] + " threw the "+objItemPPUp.s+" away instead!"
                    } else {
                        str[2] = "...but it was already too late for "+global.s_name[global.target[global._pl]]+"."
                    }
                }
            }
            objItemPPUp.noheal = 1
            alarm[1] = 1
        }
    } else {
        with instance_create(0,0,objBattleMsg) {
            if !global.s_strange[global._pl] {
                strno = 1;
                str[0] = objItemPPUp.str
                str[1] = "...but it had no effect."
            } else {
                strno = 2;
                str[0] = global.s_name[global._pl] + " is feeling a little strange..."
                str[1] = objItemPPUp.str_str
                if random(100) <= 33 {
                    str[2] = global.s_name[global._pl] + " threw the "+objItemPPUp.s+" away instead!"
                } else {
                    str[2] = "...but it had no effect."
                }
            }
        }
        alarm[1] = 1;
    }
} else {
    alarm[1] = 1;
}

