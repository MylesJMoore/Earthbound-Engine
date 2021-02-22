/// @description Basic bash damage

if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    en_random_choser();
    var msg;
    
    if (random(1000) < global.enemy[enmy].e_guts) {
        with instance_create(global.healthbar[tgt].x+30,global.healthbar[tgt].y-24,objSMAAAASH) {
            sprite_index = sprSmash2
        }
        smash = 1
        dmg = 4*global.enemy[enmy].e_off - global.s_def[tgt]
        dmg += choose(1,-1)*ceil(random(dmg*0.25))
    } else {
        if random(500)>(2*global.s_speed[tgt] - global.enemy[enmy].e_speed) or global.s_asleep[tgt] or global.s_solid[tgt] or global.s_numb[tgt] {
            dmg = 2*global.enemy[enmy].e_off - global.s_def[tgt]
            dmg += choose(1,-1)*ceil(random(dmg*0.25))
        } else {
            audio_play_sound(snddodge,0,0)
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0;
            a.str[0] = global.s_name[tgt] + " dodged swiftly!"
            alarm[11] = 1
            exit
        }
    }
    
    var countered;
    countered = 0
     
    with global.healthbar[tgt] {
        x = xstart
        y = ystart
        path_start(p_shake,6,0,0)
    }
    dmg = max(1,dmg)
    dmg = ceil(dmg/global.s_guard[tgt]);
    
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
    
    var a = instance_create(0,0,objBattleMsg);
    if global.s_shieldlife[tgt] = 0 and (global.has_shield[tgt] or global.has_pshield[tgt]) {
        a.strno = 1+countered
        if global.has_shield[tgt] {
            a.str[1] = global.s_name[tgt] + "'s shield#   disappeared!"
        } else if global.has_pshield[tgt] {
            a.str[1] = global.s_name[tgt] + "'s power shield#   disappeared!"
        }
        if countered {
            a.str[2] = "...but not before deflecting the attack!"
        }
        global.has_shield[tgt] = 0
        global.has_pshield[tgt] = 0
    } else {
        a.strno = countered
        if countered {
            a.str[1] = "The power shield deflected the attack!"
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
    a.str[0] = msg;
    
    if countered { instance_create(x,y,objEnCustomDamage) }
    
    alarm[11] = 1
}

