var sprite,sound;
switch type {
    case 0:
        sound = sndParalysisA
        break;
    case 1:
        sound = sndParalysisO
        break;
}

if backfire {
    x = 0
    y = 0
    sprite_index = sprPKEffect
    image_speed = 0.4
    image_blend = make_color_rgb(96,160,0)
}

audio_play_sound(sound,0,0)

