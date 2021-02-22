if instance_exists(objBattleMsg) {
    alarm[0] = 1
} else {
    done = 1
    direction = 90
    speed = 4
    
    if global.s_hp[global.target[global._pl]] <= 0 and global.healthbar[global.target[global._pl]].hp_actual = 0 { 
        global.healthbar[global.target[global._pl]].hp_actual = 1;
        global.s_hp[global.target[global._pl]] = 1;
        global.healthbar[global.target[global._pl]].dead = 0;
        lifeup -= 1
    }
    
    
    if global.s_hp[global.target[global._pl]] >= 0 {
        global.s_hp[global.target[global._pl]] += lifeup
    } else {
        if lifeup > global.s_hpmax[global.target[global._pl]] {
            global.s_hp[global.target[global._pl]] = global.s_hpmax[global.target[global._pl]]
        } else {
            global.s_hp[global.target[global._pl]] = lifeup
        }
    }
    audio_play_sound(sndheal1,0,0)
    with instance_create(global.healthbar[global.target[global._pl]].x,global.healthbar[global.target[global._pl]].y,objHealthBarRed) { 
        color = make_color_rgb(8,240,96);
    } 
    x = global.healthbar[global.target[global._pl]].x+30
    y = global.healthbar[global.target[global._pl]].y
    alarm[1] = 1
}

