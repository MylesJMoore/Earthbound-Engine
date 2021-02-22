/// @description Regeneration
var skill,can_regen;
skill = 0;
can_regen = 0;
chance = 0;
percent = 0;

for (var i = 64; i >= 49; i--) {
    if global.s_skill[pl,i] > 56 and global.s_skill[pl,i] < 61 {
        if global.s_skill_learnt[pl,i] {
            skill = global.s_skill[pl,i]
            break;
        }
    }
}

switch skill {
    case 57:
        chance = 10;
        percent = 3;
        break;
    case 58:
        chance = 13;
        percent = 5;
        break;
    case 59:
        chance = 17;
        percent = 7;
        break;
    case 60:
        chance = 20;
        percent = 9;
        break;
}

if random(100) <= chance {
    can_regen = 1
}

if !can_regen or skill == 0 or global.s_hp[pl] == global.s_hpmax[pl] {
    alarm[11] = 1
    exit
} 

lifeup = ceil(global.s_hpmax[pl]*percent/100)

if global.s_hp[pl] >= 0 {
    global.s_hp[pl] += lifeup
} else {
    if lifeup > global.s_hpmax[pl] {
        global.s_hp[pl] = global.s_hpmax[pl]
    } else {
        global.s_hp[pl] = lifeup
    }
}
audio_play_sound(sndheal1,0,0)
with instance_create(global.healthbar[pl].x,global.healthbar[pl].y,objHealthBarRed) { 
    color = make_color_rgb(8,240,96);
} 
x = global.healthbar[pl].x+30
y = global.healthbar[pl].y

var a = instance_create(0,0,objBattleMsg);
if global.s_hp[pl] == global.s_hpmax[pl]{
    a.str[0] = "Regeneration's effect#   maxed out "+global.s_name[pl] + "'s HP!"
} else {
    a.str[0] = "Regeneration's effect made " + global.s_name[pl] + " recover#   "+string(lifeup)+" HP!"
}


alarm[11] = 1

