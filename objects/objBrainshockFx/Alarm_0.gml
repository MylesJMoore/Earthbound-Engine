var sound, sprite;
switch type {
    case 0:
        sound = sndBrainshockA;
        sprite = sprBrainshockA;
        break;
    case 1:
        x = 0
        y = 0
        sound = sndBrainshockO;
        sprite = sprBrainshockO;
        break;
}

if backfire {
    alarm[1] = 1
}

audio_play_sound(sound,0,0)
sprite_index = sprite

