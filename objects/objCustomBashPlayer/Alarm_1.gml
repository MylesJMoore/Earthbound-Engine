/// @description Basic bash damage

if instance_exists(objBattleMsg) or instance_exists(objCustomDamage) {
    alarm[1] = 1
} else {
    if rounds >= attacks {
        alarm[11] = 1
        exit
    }
    
    if (global.target[global._pl].crying and random(160)<90) or random(160)<10 {
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
            alarm[1] = 1
            exit
        }
    }
    
    if (random(1000) < global.s_guts[global._pl]) and !nosmash and bashlike {
        instance_create(global.target[global._pl].x,global.target[global._pl].y-48,objSMAAAASH)
        dmg = 4*global.s_off[global._pl] - global.target[global._pl].e_def
        smash = 1;
    } else {
        if dodgeable {
            if random(500)<=(2*global.target[global._pl].e_speed - global.s_speed[global._pl]) 
            and !global.target[global._pl].asleep and !global.target[global._pl].solids 
            and !global.target[global._pl].numb {
                audio_play_sound(snddodge,0,0)
                var a = instance_create(0,0,objBattleMsg);
                a.strno = 0;
                a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name+ " dodged swiftly!"
                rounds++
                alarm[1] = 1
                exit
            }
        }
    }
    
    if !nohiteffect { 
        with global.target[global._pl] { alarm[1] = 2 }
        with instance_create(random_range(global.target[global._pl].x-16,global.target[global._pl].x+16),
		random_range(global.target[global._pl].y-16,global.target[global._pl].y+16),objHitEffect) { visible = 1 }
    }
    
    if !nodamage {
        var countered, resist;
        countered = 0;
        resist = 0;
        
        switch element {
            case 1:
                resist = global.target[global._pl].fire_resistance; 
                break;
            case 2:
                resist = global.target[global._pl].freeze_resistance; 
                break;
            case 3:
                resist = global.target[global._pl].thunder_resistance; 
                break;
        }
        
        if !smash { 
            if bashlike {
                dmg = level*global.s_off[global._pl] - global.target[global._pl].e_def 
            } else {
                dmg = customdmg
            }
        }
        dmg += choose(1,-1)*ceil(random(dmg*0.25))
        dmg = ceil(dmg*(100-30*resist)/100)
        dmg = max(1,dmg)
        dmg = ceil(dmg/global.target[global._pl].e_grd);
        
        if global.target[global._pl].has_shield or global.target[global._pl].has_pshield {
            if smash or breakshield {
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
        
        global.target[global._pl].e_hp -= dmg;
        a.str[0] = string(dmg)+" HP of damage#   to "+global.target[global._pl].e_art + global.target[global._pl].e_name + "!"
        
        if countered { en_random_choser_extra(); instance_create(x,y,objCustomDamage) }
    }
    
    rounds++
    if ailment = 0 { alarm[1] = 1 } else { alarm[10] = 1 }
    exit
}

