if instance_exists(objBrainshockFx) or instance_exists(objBattleMsg) {
    alarm[2] = 1
} else {
    if type = 0 {
    
        var resist;
        resist = 4-global.target[global._pl].hypno_resistance;
        failed = 0
        
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        
        if random(100) > (max(1,resist*30)) {
            if !global.target[global._pl].strange {
                global.target[global._pl].strange = 1
            } else {
                failed = 1
            }
        } else { 
            failed = 1
        }
        
        if !failed {
            a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + " felt a little strange..."
            with instance_create(global.target[global._pl].x,global.target[global._pl].y,objEnemyAilmentFade) { 
                sprite_index = global.target[global._pl].sprite_index  
                image_index = global.target[global._pl].image_index
                color = make_color_rgb(115,0,223)
            } 
        } else {
            a.str[0] = "It had no effect on "+global.target[global._pl].e_art + global.target[global._pl].e_name + "!"
        }
        alarm[11] = 1
    } else {
        if rounds > global.en_count {
            alarm[11] = 1
            exit
        } else {
            if global.enemy[rounds] = 0 {
                alarm[2] = 1
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
                a.str[0] = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name + " felt a little strange..."
                with instance_create(global.enemy[rounds].x,global.enemy[rounds].y,objEnemyAilmentFade) { 
                    sprite_index = global.enemy[objBrainshock.rounds].sprite_index  
                    image_index = global.enemy[objBrainshock.rounds].image_index
                    color = make_color_rgb(115,0,223)
                }
                
            } else {
                a.str[0] = "It had no effect on "+global.enemy[rounds].e_art + global.enemy[rounds].e_name + "!"
            }
            rounds++
            alarm[2] = 1
        }
    }
}

