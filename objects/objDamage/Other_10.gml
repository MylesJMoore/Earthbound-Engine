var countered;
countered = 0
dmg = max(1,dmg)
dmg = ceil(dmg/global.target[global._pl].e_grd);

if global.target[global._pl].has_shield or global.target[global._pl].has_pshield {
    if smash {
        global.target[global._pl].shieldlife = 0;
        countered = global.target[global._pl].has_pshield;
    } else {
        dmg = ceil(dmg/2)
        countered = global.target[global._pl].has_pshield;
        global.target[global._pl].shieldlife--;
    }
}

global.custom_dmg = dmg

var a = instance_create(0,0,objBattleMsg);
if global.target[global._pl].shieldlife = 0 and (global.target[global._pl].has_shield or global.target[global._pl].has_pshield) {
    a.strno = 1+countered
    if global.target[global._pl].has_shield {
        a.str[1] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + "'s shield#   disappeared!"
    } else if global.target[global._pl].has_pshield {
        a.str[1] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + "'s power shield#   disappeared!"
    }
    if countered {
        a.str[2] = "...but not before deflecting the attack!"
    }
    global.target[global._pl].has_shield = 0
    global.target[global._pl].has_pshield = 0
} else {
    a.strno = countered
    if countered {
        a.str[1] = "The power shield deflected the attack!"
    }
}

with global.target[global._pl] { alarm[1] = 2 }

global.target[global._pl].e_hp -= dmg;
a.str[0] = string(dmg)+" HP of damage#   to "+global.target[global._pl].e_art + global.target[global._pl].e_name + "!"

if countered { instance_create(x,y,objCustomDamage) }

with instance_create(random_range(global.target[global._pl].x-16,global.target[global._pl].x+16),
		random_range(global.target[global._pl].y-16,global.target[global._pl].y+16),objHitEffect) { visible = 1 }

instance_destroy()

