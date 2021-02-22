/// @description Damage goes here
var a,b;
a = instance_create(0,0,objBattleMsg);
switch type{
    case 0: b = "["; break;
    case 1: b = "_"; break;
}

switch stat {
    case 0:
        _stat = "Offense"
        break;
    case 1:
        _stat = "Defense"
        break;
    case 2:
        _stat = "Guts"
        break;
}

if !global.s_strange[global._pl] {
    a.strno = 0;
    a.str[0] = global.s_name[global._pl] + " tried "+_stat+" Up "+b+"!"
} else {
    a.strno = 1;
    a.str[0] = global.s_name[global._pl] + " is feeling a little strange..."
    a.str[1] = global.s_name[global._pl] + " tried "+_stat+" Up "+b+"!"
}

if !global.s_cantconcentrate[global._pl] {
    alarm[1] = 1
} else {
    alarm[9] = 1
}

