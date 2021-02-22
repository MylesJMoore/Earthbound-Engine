var sprite;
switch type {
    case 0:
        sprite = sprThunderA;
        break;
    case 1:
        sprite = sprThunderA;
        break;
    case 2:
        sprite = sprThunderG;
        break;
    case 3:
        sprite = sprThunderG;
        break;
}

if !backfire {
    if visible {
        with instance_create(global.target[global._pl].x,global.target[global._pl].y,objEnemyGeneralFade) { 
            sprite_index = global.target[global._pl].sprite_index 
            image_index = global.target[global._pl].image_index
            depth = global.target[global._pl].depth-1
            color = make_color_rgb(246,243,74)
        }
    }
} else {
    x = 0
    y = 0
    sprite = sprPKEffect
    image_speed = 0.4
    image_blend = make_color_rgb(246,243,74)
}

if visible { audio_play_sound(sndthunderA,0,0) } else { audio_play_sound(sndthunder,0,0); audio_sound_gain(sndthunder, 0.4, 0); }
sprite_index = sprite

