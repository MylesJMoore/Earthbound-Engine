/// @description Basic bash damage - Backfire

if instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    var countered = 0;
    random_choser_extra2();
    
    if (random(1100) < global.enemy[enmy].e_guts) {
        instance_create(global.enemy[tgt].x,global.enemy[tgt].y-48,objSMAAAASH)
        dmg = 4*global.enemy[enmy].e_off - global.enemy[tgt].e_def
        smash = 1;
    } else {
        if random(500)>(2*global.enemy[tgt].e_speed - global.enemy[enmy].e_speed) or global.enemy[tgt].asleep or global.enemy[tgt].solids or global.enemy[tgt].numb {
            dmg = 2*global.enemy[enmy].e_off - global.enemy[tgt].e_def
        } else {
            audio_play_sound(snddodge,0,0)
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0;
            a.str[0] = upper(global.enemy[tgt].e_art) + global.enemy[tgt].e_name+ " dodged swiftly!";
            instance_destroy()
            exit
        }
    }
    
    dmg += choose(1,-1)*ceil(random(dmg*0.25))
    dmg = max(1,dmg)
    dmg = ceil(dmg/global.enemy[tgt].e_grd);
    
    if global.enemy[tgt].has_shield or global.enemy[tgt].has_pshield {
        if smash {
            global.enemy[tgt].shieldlife = 0;
            countered = global.enemy[tgt].has_pshield;
        } else {
            dmg = ceil(dmg/2)
            countered = global.enemy[tgt].has_pshield;
            global.enemy[tgt].shieldlife--;
        }
    }
    
    global.custom_dmg = dmg
    
    var a = instance_create(0,0,objBattleMsg);
    if global.enemy[tgt].shieldlife = 0 and (global.enemy[tgt].has_shield or global.enemy[tgt].has_pshield) {
        a.strno = 1+countered
        if global.enemy[tgt].has_shield {
            a.str[1] = upper(global.enemy[tgt].e_art) + global.enemy[tgt].e_name + "'s shield#   disappeared!";
        } else if global.enemy[tgt].has_pshield {
            a.str[1] = upper(global.enemy[tgt].e_art) + global.enemy[tgt].e_name + "'s power shield#   disappeared!";
        }
        if countered {
            a.str[2] = "...but not before deflecting the attack!"
        }
        global.enemy[tgt].has_shield = 0
        global.enemy[tgt].has_pshield = 0
    } else {
        a.strno = countered
        if countered {
            a.str[1] = "The power shield deflected the attack!"
        }
    }
    
    with global.enemy[tgt] { alarm[1] = 2 }
    
    global.enemy[tgt].e_hp -= dmg;
    a.str[0] = string(dmg)+" HP of damage#   to "+global.enemy[tgt].e_art + global.enemy[tgt].e_name + "!";
    
    if countered { en_random_choser_extra(); instance_create(x,y,objCustomDamage) }
    
    with instance_create(random_range(global.enemy[tgt].x-16,global.enemy[tgt].x+16),
	random_range(global.enemy[tgt].y-16,global.enemy[tgt].y+16),objHitEffect) { visible = 1 }
    
    alarm[11] = 1
}

