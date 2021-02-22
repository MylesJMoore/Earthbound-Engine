smash = 0
countered = 0

en_random_choser()

if (random(1100) < global.s_guts[global._pl]) {
    with instance_create(global.healthbar[tgt].x+30,global.healthbar[tgt].y-24,objSMAAAASH) {
        sprite_index = sprSmash2
    }
    dmg = 4*global.s_off[global._pl] - global.s_def[tgt]
    smash = 1;
} else {
    if random(500)>(2*global.s_speed[tgt] - global.s_speed[global._pl]) or global.s_asleep[tgt] or global.s_solid[tgt] or global.s_numb[tgt] {
        dmg = 2*global.s_off[global._pl] - global.s_def[tgt]
        
    } else {
        audio_play_sound(snddodge,0,0)
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0;
        a.str[0] = global.s_name[tgt] + " dodged swiftly!"
        instance_destroy()
        exit
    }
}
 
with global.healthbar[tgt] {
    x = xstart
    y = ystart
    path_start(p_shake,6,0,0)
}


dmg += choose(1,-1)*ceil(random(dmg*0.25))
dmg = ceil(dmg/global.s_guard[tgt]);
dmg = max(1,dmg)

if global.has_shield[tgt] or global.has_pshield[tgt] {
    if smash {
        global.s_shieldlife[tgt] = 0;
        countered = global.has_pshield[tgt];
    } else {
        dmg = ceil(dmg/2)
        countered = global.has_pshield[tgt];
        global.s_shieldlife[tgt]--;
    }
}

global.custom_dmg = dmg;

var b = instance_create(0,0,objBattleMsg);
if global.s_shieldlife[tgt] = 0 and (global.has_shield[tgt] or global.has_pshield[tgt]) {
    b.strno = 1+countered
    if global.has_shield[tgt] {
        b.str[1] = global.s_name[tgt] + "'s shield#   disappeared!"
    } else if global.has_pshield[tgt] {
        b.str[1] = global.s_name[tgt] + "'s power shield#   disappeared!"
    }
    if countered {
        b.str[2] = "...but not before deflecting the attack!"
    }
    global.has_shield[tgt] = 0
    global.has_pshield[tgt] = 0
} else {
    b.strno = countered
    if countered {
        b.str[1] = "The power shield deflected the attack!"
    }
}

if dmg >= global.s_hp[tgt] {
    instance_create(0,0,objMortalDamage)
    msg = string(dmg)+" HP of mortal damage#   to "+global.s_name[tgt] + "!"
} else {
    audio_play_sound(sndbump,0,0)
    msg = string(dmg)+" HP of damage#   to "+global.s_name[tgt] + "!"
}

global.s_hp[tgt] -= dmg
b.str[0] = msg;

if countered { random_choser_extra(); instance_create(x,y,objEnCustomDamage) }

alarm[0] = 1

