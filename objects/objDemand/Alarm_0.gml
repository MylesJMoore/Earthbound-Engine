var a;
a = instance_create(0,0,objBattleMsg);

a.strno = 0;

    if global.target[global._pl].patience = 100 {
        a.str[0] = global.s_name[1]+" asked the guard for a bigger cell!"
    } else if global.target[global._pl].patience < 100 and global.target[global._pl].patience >= 80 {
        a.str[0] = global.s_name[1]+" asked the guard for clean bed sheets!"
    } else if global.target[global._pl].patience < 80 and global.target[global._pl].patience >= 60 {
        a.str[0] = global.s_name[1]+" demanded a better quality of life for fellow inmates!"
    } else if global.target[global._pl].patience < 60 and global.target[global._pl].patience >= 40 {
        a.str[0] = global.s_name[1]+" posed the guard a hypothetical question!#@ Something like: <Would you enjoy this if you were a prisoner?>"
    } else if global.target[global._pl].patience < 40 and global.target[global._pl].patience >= 20 {
        a.str[0] = global.s_name[1]+" harshly criticised the guard's fashion sense!"
    } else if global.target[global._pl].patience < 20 and global.target[global._pl].patience >= 0 {
        a.str[0] = global.s_name[1]+" smugly declared the whole building to be unsightly!"
    } else {
        a.str[0] = global.s_name[1]+" called the guard a poopy-head!#@ Very harsh words."
    }

alarm[2] = 1

