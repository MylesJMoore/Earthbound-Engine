if global.target[global._pl] = global._pl {
    str = global.s_name[global._pl] + " used the "+objItemHealing.s+"!"
    str_str = global.s_name[global._pl] + " tried to use the "+objItemHealing.s+"!"
} else {
    str = global.s_name[global._pl] + " used the "+objItemHealing.s+" on "+ global.s_name[global.target[global._pl]]+"!"
    str_str = global.s_name[global._pl] + " tried to use the "+objItemHealing.s+" on "+global.s_name[global.target[global._pl]]+" !"
}

with instance_create(0,0,objBattleMsg) {
    if !global.s_strange[global._pl] {
        strno = 0;
        str[0] = objItemHealing.str
    } else {
        if random(100) <= 33 {
            strno = 2;
            objItemHealing.noheal = 1
        } else {
            strno = 1;
        }
        str[0] = global.s_name[global._pl] + " is feeling a little strange..."
        str[1] = objItemHealing.str_str
        str[2] = global.s_name[global._pl] + " threw the "+objItemHealing.s+" away instead!"
    }
}
if !noheal { alarm[0] = 1 } else { alarm[10] = 1 }

