/// @description Basic bash damage - Backfire

if instance_exists(objBattleMsg) or instance_exists(objEnCustomDamage) {
    alarm[2] = 1
} else {
    if rounds >= attacks {
        alarm[11] = 1
        exit
    }
    
    if (global.s_crying[global._pl] and random(160)<90) or random(160)<10 {
        if !nomiss {
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0;
            if !laser {
                a.str[0] = "Just missed!"
            } else {
                a.str[0] = "...narrowly missed hitting the target!"
            }
            audio_play_sound(sndmiss,0,0)
            rounds++
            alarm[2] = 1
            exit
        }
    }
    
    en_random_choser();
    
    if (random(1000) < global.s_guts[global._pl]) and !nosmash and bashlike {
        with instance_create(global.healthbar[tgt].x+30,global.healthbar[tgt].y-24,objSMAAAASH) {
            sprite_index = sprSmash2
        }
        smash = 1
        dmg = 4*global.s_off[global._pl] - global.s_def[tgt]
    } else {
        if dodgeable {
            if random(500)<=(2*global.s_speed[tgt] - global.enemy[enmy].e_speed) 
            and !global.s_asleep[tgt] and !global.s_solid[tgt] and !global.s_numb[tgt] {
                audio_play_sound(snddodge,0,0)
                var a = instance_create(0,0,objBattleMsg);
                a.strno = 0;
                a.str[0] = global.s_name[tgt] + " dodged swiftly!"
                rounds++
                alarm[2] = 1
                exit
            }
        }
    }
    
    with global.healthbar[tgt] {
        x = xstart
        y = ystart
        path_start(p_shake,6,0,0)
    }
    
    audio_play_sound(sndbump,0,0)
    
    if !nodamage {
        var countered, resist, msg;
        countered = 0
        resist = 0
        
        switch element {
            case 1:
                resist = global.fire_resistance[tgt]; 
                break;
            case 2:
                resist = global.freeze_resistance[tgt]; 
                break;
            case 3:
                resist = global.thunder_resistance[tgt]; 
                break;
        }
        
        if !smash { 
            if bashlike {
                dmg = level*global.s_off[global._pl] - global.s_def[tgt] 
            } else {
                dmg = customdmg
            }
        }
        dmg += choose(1,-1)*ceil(random(dmg*0.25))
        dmg = ceil(dmg*(100-30*resist)/100)
        dmg = max(1,dmg)
        dmg = ceil(dmg/global.s_guard[tgt]);
        
        if global.has_shield[tgt] or global.has_pshield[tgt] {
            if smash or breakshield {
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
            msg = string(dmg)+" HP of damage#   to "+global.s_name[tgt] + "!"
        }
        
        global.s_hp[tgt] -= dmg
        a.str[0] = msg;
        
        if countered { instance_create(x,y,objEnCustomDamage) }
    }
    
    rounds++
    if ailment = 0 { alarm[2] = 1 } else { alarm[10] = 1 }
    exit
}

