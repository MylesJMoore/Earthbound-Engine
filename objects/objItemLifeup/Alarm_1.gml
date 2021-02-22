if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    if !noheal {
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        if global.target[global._pl] = global._pl {
            if global.s_hp[global._pl] == global.s_hpmax[global._pl]{
                a.str[0] = global.s_name[global._pl] + "'s HP are#   maxed out!"
            } else {
                a.str[0] = global.s_name[global._pl] + " recovered#   "+string(lifeup)+" HP!"
            }
        } else {
            if global.s_hp[global.target[global._pl]] == global.s_hpmax[global.target[global._pl]]{
                a.str[0] = global.s_name[global.target[global._pl]] + "'s HP are#   maxed out!"
            } else {
                a.str[0] = global.s_name[global.target[global._pl]] + " recovered#   "+string(lifeup)+" HP!"
            }
        }
    }
    alarm[10] = 1
}

