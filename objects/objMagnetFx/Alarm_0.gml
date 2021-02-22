if backfire {
    x = 0
    y = 0
    sprite_index = sprPKEffect
    image_speed = 0.4
    image_blend = make_color_rgb(255,160,255)
} else {
    if type = 0 {
        with instance_create(global.target[global._pl].x,global.target[global._pl].y,objEnemyGeneralFade) { 
            sprite_index = global.target[global._pl].sprite_index 
            image_index = global.target[global._pl].image_index
            depth = global.target[global._pl].depth -1
            color = make_color_rgb(255,160,255)
        }
    } else {
        for (var i=1;i<global.en_count+1;i++) {
            var e = instance_create(global.enemy[i].x,global.enemy[i].y,objEnemyGeneralFade);
            e.sprite_index = global.enemy[i].sprite_index  
            e.image_index = global.enemy[i].image_index  
            e.depth = global.enemy[i].depth-1
            e.color = make_color_rgb(255,160,255)
        }
    }
}

audio_play_sound(sndmagnet,0,0)

