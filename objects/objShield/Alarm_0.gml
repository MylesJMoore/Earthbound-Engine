/// @description Damage goes here
var a,msg;
a = instance_create(0,0,objBattleMsg);

switch type{
    case 0: 
        if kind = 0 or kind = 2 { b = "["; } 
        else { b = "\\"; }
        break;
    case 1: 
        if kind = 0 or kind = 2 { b = "^"; }
        else { b = "_"; }
        break;
}

switch kind {
    case 0:
    case 1:
        msg = global.s_name[global._pl] + " tried Shield "+b+"!"
        break;
    case 2:
    case 3:
        msg = global.s_name[global._pl] + " tried PSI Shield "+b+"!"
        break;
}

if !global.s_strange[global._pl] {
    a.strno = 0;
    a.str[0] = msg 
} else {
    a.strno = 1;
    a.str[0] = global.s_name[global._pl] + " is feeling a little strange..."
    a.str[1] = msg
}


if !global.s_cantconcentrate[global._pl] {
    alarm[1] = 1
} else {
    alarm[9] = 1
}

