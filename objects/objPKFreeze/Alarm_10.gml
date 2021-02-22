if instance_exists(objBattleMsg) or instance_exists(objCustomDamage) or instance_exists(objEnCustomDamage) {
    alarm[10] = 1
} else {
    if !failed {
        if !backfire {
            if random(100)<25 and !global.target[global._pl].solids {
                //solidify
                global.target[global._pl].solids = 1
                with instance_create(global.target[global._pl].x,global.target[global._pl].y,objEnemyAilmentFade) { 
                    sprite_index = global.target[global._pl].sprite_index  
                    image_index = global.target[global._pl].image_index  
                    color = make_color_rgb(115,0,223)
                }
                var a = instance_create(0,0,objBattleMsg);
                a.strno = 0;
                a.str[0] = upper(global.target[global._pl].e_art) + global.target[global._pl].e_name + "'s body solidified!";
            }
        } else {
            if random(100)<25 and !global.s_solid[tgt] {
                global.s_solid[tgt] = 1
                with instance_create(global.healthbar[tgt].x,global.healthbar[tgt].y,objHealthBarRed) { 
                    color = make_color_rgb(115,0,223);
                } 
                audio_play_sound(sndailment,0,0)
                var a = instance_create(0,0,objBattleMsg);
                a.strno = 0;
                a.str[0] = global.s_name[tgt] + "'s body solidified!";
            }
        }
    }
    alarm[11] = 1
}

