var sound;
switch kind {
    case 0:
        sound = sndshield2;
        image_blend = c_white
        break;
    case 1:
        sound = sndshield2;
        image_blend = make_color_rgb(246,243,74)
        break;
    case 2:
        sound = sndshield;
        image_blend = make_color_rgb(255,50,255)
        break;
    case 3:
        sound = sndshield;
        image_blend = make_color_rgb(49,86,244)
        break;
}

x = 0
y = 0

audio_play_sound(sound,0,0)
sprite_index = sprShield

