/// @description Basic bash damage - Backfire

if instance_exists(objBattleMsg) or instance_exists(objCustomDamage) {
    alarm[2] = 1
} else {
    
    if attackall {
        tgt = rounds+1
        
        if rounds >= global.en_count or !global.enemy[tgt] {
            alarm[11] = 1
            exit
        }
    } else {
        if rounds >= attacks {
            alarm[11] = 1
            exit
        }

        random_choser_extra2();
    }
    
    
    if (global.enemy[enmy].crying and random(160)<90) or random(160)<10 and !nomiss{
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

    if laser { audio_play_sound(sndBeam,0,0) }
    
    if (random(1000) < global.enemy[enmy].e_guts) and !nosmash and bashlike {
        instance_create(global.enemy[tgt].x,global.enemy[tgt].y-48,objSMAAAASH)
        dmg = 4*global.enemy[enmy].e_off - global.enemy[tgt].e_def
        smash = 1;
    } else {
        if dodgeable {
            if random(500)<=(2*global.enemy[tgt].e_speed - global.enemy[enmy].e_speed) 
            and !global.enemy[tgt].asleep and !global.enemy[tgt].solids 
            and !global.enemy[tgt].numb {
                audio_play_sound(snddodge,0,0)
                var a = instance_create(0,0,objBattleMsg);
                a.strno = 0;
                a.str[0] = upper(global.enemy[tgt].e_art) + global.enemy[tgt].e_name+ " dodged swiftly!";
                rounds++
                alarm[2] = 1
                exit
            }
        }
    }
    
    with global.enemy[tgt] { alarm[1] = 2 }
    with instance_create(random_range(global.enemy[tgt].x-16,global.enemy[tgt].x+16),
random_range(global.enemy[tgt].y-16,global.enemy[tgt].y+16),objHitEffect) { visible = 1 }
    
    if !nodamage {
        var countered, resist;
        countered = 0;
        resist = 0;
        
        switch element {
            case 1:
                resist = global.enemy[tgt].fire_resistance; 
                break;
            case 2:
                resist = global.enemy[tgt].freeze_resistance; 
                break;
            case 3:
                resist = global.enemy[tgt].thunder_resistance; 
                break;
        }
        
        if !smash { 
            if bashlike {
                dmg = level*global.enemy[enmy].e_off - global.enemy[tgt].e_def 
            } else {
                dmg = customdmg
            }
        }
        dmg += choose(1,-1)*ceil(random(dmg*0.25))
        dmg = ceil(dmg*(100-30*resist)/100)
        dmg = max(1,dmg)
        dmg = ceil(dmg/global.enemy[tgt].e_grd);
        
        if global.enemy[tgt].has_shield or global.enemy[tgt].has_pshield {
            if smash or breakshield {
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
        
        global.enemy[tgt].e_hp -= dmg;
        a.str[0] = string(dmg)+" HP of damage#   to "+global.enemy[tgt].e_art + global.enemy[tgt].e_name + "!";
        
        if countered { en_random_choser_extra(); instance_create(x,y,objCustomDamage) }
    }
    
    rounds++
    if ailment = 0 { alarm[2] = 1 } else { alarm[10] = 1 }
    exit
}

