var sound, sprite;
switch type {
    case 0:
        sound = sndfreezeA;
        sprite = sprFreezeA;
        break;
    case 1:
        sound = sndfreezeA;
        sprite = sprFreezeB;
        break;
    case 2:
        sound = sndfreezeG;
        sprite = sprFreezeG;
        break;
    case 3:
        sound = sndfreezeO;
        sprite = sprFreezeO;
        break;
}

if !backfire {
    with instance_create(global.target[global._pl].x,global.target[global._pl].y,objEnemyGeneralFade) { 
        sprite_index = global.target[global._pl].sprite_index 
        image_index = global.target[global._pl].image_index   
        depth = global.target[global._pl].depth-1
        color = make_color_rgb(49,205,244)
    }
} else {
    x = 0
    y = 0
    sprite = sprPKEffect
    image_speed = 0.4
    image_blend = make_color_rgb(49,86,244)
}

audio_play_sound(sound,0,0)
sprite_index = sprite

