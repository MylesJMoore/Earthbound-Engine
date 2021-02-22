var a;
a = instance_create(0,0,objBattleMsg) 
a.strno = 3;
a.str[0] = global.s_name[global._pl] + " inspected "+upper(global.target[global._pl].e_art)+global.target[global._pl].e_name+"..."
a.str[1] = "Offense: "+string(global.target[global._pl].e_off)+" / Defense: "+string(global.target[global._pl].e_def)+".#@ "+global.target[global._pl].e_description
if global.target[global._pl].fire_resistance < 2 {
    a.str[2] = upper(global.target[global._pl].e_pron) + " seems weak against fire!"
} else if global.target[global._pl].freeze_resistance < 2 {
    a.str[2] = upper(global.target[global._pl].e_pron) + " seems weak against ice!"
} else if global.target[global._pl].thunder_resistance < 2 {
    a.str[2] = upper(global.target[global._pl].e_pron) + " seems weak against thunder!"
} else if global.target[global._pl].flash_resistance < 2 {
    a.str[2] = upper(global.target[global._pl].e_pron) + " seems weak against flash!"
} else {
    a.str[2] = upper(global.target[global._pl].e_pron) + " doesn't seem particularly weak to any elemental attacks."
}

if global.target[global._pl].hypno_resistance < 2 {
    a.str[3] = upper(global.target[global._pl].e_pron) + " seems weak against sleep!"
} else if global.target[global._pl].hypno_resistance > 2 {
    a.str[3] = upper(global.target[global._pl].e_pron) + " seems weak against strangeness!"
} else if global.target[global._pl].paralysis_resistance < 2 {
    a.str[3] = upper(global.target[global._pl].e_pron) + " seems weak against paralysis!"
} else {
    a.str[3] = upper(global.target[global._pl].e_pron) + " doesn't seem particularly weak to any status effects."
}

alarm[0] = 1;

