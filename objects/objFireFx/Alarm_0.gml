var sound, sprite;
switch type {
    case 0:
        sound = sndfireA;
        sprite = sprFireA;
        break;
    case 1:
        sound = sndfireB;
        sprite = sprFireB;
        break;
    case 2:
        sound = sndfireB;
        sprite = sprFireG;
        break;
    case 3:
        sound = sndfireO;
        sprite = sprFireO;
        break;
}

if !backfire {
    for (var i=1;i<global.en_count+1;i++) {
        if global.enemy[i] != 0 {
            var e = instance_create(global.enemy[i].x,global.enemy[i].y,objEnemyGeneralFade);
            e.sprite_index = global.enemy[i].sprite_index  
            e.image_index = global.enemy[i].image_index  
            e.depth = global.enemy[i].depth-1
            e.color = make_color_rgb(244,49,49)
        }
    }
    x = 213
    y = 120
} else {
    x = 0
    y = 0
    sprite = sprPKEffect
    image_speed = 0.4
    image_blend = make_color_rgb(244,49,49)
}

audio_play_sound(sound,0,0)
sprite_index = sprite

