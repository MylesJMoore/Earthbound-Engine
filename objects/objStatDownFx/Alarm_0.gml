var sprite,sound;
switch type {
    case 0:
        sprite = sprDefenseDownA;
        sound = sndDefenseDownA;
        break;
    case 1:
        x = 160
        y = 120
        sprite = sprDefenseDownO;
        sound = sndDefenseDownO;
        break;
}

if backfire {
    x = 0
    y = 0
    sprite = sprPKEffect
    image_speed = 0.4
    image_blend = make_color_rgb(64,240,240)
}

audio_play_sound(sound,0,0)
sprite_index = sprite

