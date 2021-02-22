switch act[global._pl] {
    case "item_lifeup_a":
        lifeup = lifeup_effect(0);
        break;
    case "item_lifeup_b":
        lifeup = lifeup_effect(1);
        break;
    case "item_lifeup_g":
        lifeup = lifeup_effect(2);
        break;
    case "item_lifeup_o_one":
        lifeup = lifeup_effect(3);
        break;
    case "item_lifeup_custom":
        lifeup = custom_lifeup;
        //lifeup += choose(-1,1)*ceil(lifeup*0.25)
        break;
}

if (lifeup+global.s_hp[global.target[global._pl]]) > global.s_hpmax[global.target[global._pl]] {
    lifeup = global.s_hpmax[global.target[global._pl]]-global.s_hp[global.target[global._pl]];
}

if lifeup = 0 {
    noheal = 1;
}

if global.target[global._pl] = global._pl {
    str = global.s_name[global._pl] + " had the "+objItemLifeup.s+"!"
    str_str = global.s_name[global._pl] + " tried to have the "+objItemLifeup.s+"!"
} else {
    str = global.s_name[global._pl] + " gave "+ global.s_name[global.target[global._pl]]+" the "+objItemLifeup.s+"!"
    str_str = global.s_name[global._pl] + " tried to give "+ global.s_name[global.target[global._pl]]+" the "+objItemLifeup.s+"!"
}

if !noheal {
    if !global.dead[global.target[global._pl]] {
        with instance_create(0,0,objBattleMsg) {
            if !global.s_strange[global._pl] {
                strno = 0;
                str[0] = objItemLifeup.str
            } else {
                if random(100) <= 33 {
                    strno = 2;
                    objItemLifeup.noheal = 1
                } else {
                    strno = 1;
                }
                str[0] = global.s_name[global._pl] + " is feeling a little strange..."
                str[1] = objItemLifeup.str_str
                str[2] = global.s_name[global._pl] + " threw the "+objItemLifeup.s+" away instead!"
            }
        }
        alarm[0] = 1
    } else {
        with instance_create(0,0,objBattleMsg) {
            if !global.s_strange[global._pl] {
                strno = 1;
                str[0] = objItemLifeup.str
                str[1] = "...but it was already too late for "+global.s_name[global.target[global._pl]]+"."
            } else {
                strno = 2;
                str[0] = global.s_name[global._pl] + " is feeling a little strange..."
                str[1] = objItemLifeup.str_str
                if random(100) <= 33 {
                    str[2] = global.s_name[global._pl] + " threw the "+objItemLifeup.s+" away instead!"
                } else {
                    str[2] = "...but it was already too late for "+global.s_name[global.target[global._pl]]+"."
                }
            }
        }
        objItemLifeup.noheal = 1
        alarm[1] = 1
    }
} else {
    with instance_create(0,0,objBattleMsg) {
        if !global.s_strange[global._pl] {
            strno = 1;
            str[0] = objItemLifeup.str
            str[1] = "...but it had no effect."
        } else {
            strno = 2;
            str[0] = global.s_name[global._pl] + " is feeling a little strange..."
            str[1] = objItemLifeup.str_str
            if random(100) <= 33 {
                str[2] = global.s_name[global._pl] + " threw the "+objItemLifeup.s+" away instead!"
            } else {
                str[2] = "...but it had no effect."
            }
        }
    }
    //objItemLifeup.noheal = 1
    alarm[1] = 1;
}

