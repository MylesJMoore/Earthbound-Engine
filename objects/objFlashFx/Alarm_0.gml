var sound, sprite;
switch type {
    case 0:
        sound = sndflashA;
        sprite = sprFlashA;
        break;
    case 1:
        sound = sndflashA;
        sprite = sprFlashB;
        break;
    case 2:
        sound = sndflashG;
        sprite = sprFlashG;
        break;
    case 3:
        sound = sndflashO;
        sprite = sprFlashO;
        break;
}

x = 0
y = 0

if backfire {
    sprite = sprPKEffect
    image_speed = 0.4
    image_blend = c_white
}

audio_play_sound(sound,0,0)
sprite_index = sprite

