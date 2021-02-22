/// @description Damage goes here
var a;
a = instance_create(0,0,objBattleMsg);
switch type{
    case 0: b = "["; break;
    case 1: b = "_"; break;
}

if !global.s_strange[global._pl] {
    a.strno = 0;
    a.str[0] = global.s_name[global._pl] + " tried Paralysis "+b+"!"
} else {
    a.strno = 1;
    a.str[0] = global.s_name[global._pl] + " is feeling a little strange..."
    a.str[1] = global.s_name[global._pl] + " tried Paralysis "+b+"!"
}

if !global.s_cantconcentrate[global._pl] {
    alarm[1] = 1
} else {
    alarm[9] = 1
}

