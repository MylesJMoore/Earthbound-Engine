var sprite;
switch type {
    case 0:
        sprite = sprHypnosisA;
        break;
    case 1:
        x = 160
        y = 120
        sprite = sprHypnosisO;
        break;
}

if backfire {
    x = 0
    y = 0
    sprite = sprPKEffect
    image_speed = 0.4
    image_blend = make_color_rgb(64,240,240)
}

audio_play_sound(sndHypnosisA,0,0)
sprite_index = sprite

