if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    if type = 0 {
        random_choser_extra();
    
        var resist;
        resist = 4-global.enemy[enmy].hypno_resistance;
        failed = 0
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if random(100) > (max(1,resist*30)) {
            if !global.enemy[enmy].strange {
                global.enemy[enmy].strange = 1
            } else {
                failed = 1
            }
        } else { 
            failed = 1
        }
        
        if !failed {
            a.str[0] = global.enemy[enmy].e_name + " felt a little strange...";
            with instance_create(global.enemy[enmy].x,global.enemy[enmy].y,objEnemyAilmentFade) { 
                sprite_index = global.enemy[enmy].sprite_index    
                image_index = global.enemy[enmy].image_index
                color = make_color_rgb(115,0,223)
            } 
        } else {
            a.str[0] = "It had no effect on "+global.enemy[enmy].e_art + global.enemy[enmy].e_name + "!";
        }
        alarm[11] = 1
    } else {
        if rounds > global.en_count {
            alarm[11] = 1
            exit
        } else {
            if global.enemy[rounds] = 0 {
                alarm[3] = 1
                rounds++
                exit
            }
            var resist;
            resist = 4-global.enemy[rounds].hypno_resistance;
            failed = 0
            
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            
            if random(100) > (max(1,resist*30)) {
                if !global.enemy[rounds].strange {
                    global.enemy[rounds].strange = 1
                } else {
                    failed = 1
                }
            } else { 
                failed = 1
            }
            
            if !failed {
                a.str[0] = global.enemy[rounds].e_name + " felt a little strange...";
                with instance_create(global.enemy[rounds].x,global.enemy[rounds].y,objEnemyAilmentFade) { 
                    sprite_index = global.enemy[objEnBrainshockDamage.rounds].sprite_index   
                    image_index = global.enemy[objEnBrainshockDamage.rounds].image_index 
                    color = make_color_rgb(115,0,223)
                }
                
            } else {
                a.str[0] = "It had no effect on "+global.enemy[rounds].e_art + global.enemy[rounds].e_name + "!"
            }
            rounds++
            alarm[3] = 1
        }
    }
}

