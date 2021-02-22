if !inactive and player < 7{
    audio_play_sound(sndselect2,0,0)
    if cursor_y = _y[1]  { cursor_y = _y[2] }
    else if cursor_y = _y[2]  { cursor_y = _y[3] }
    else if cursor_y = _y[3]  { cursor_y = _y[4] }
    else if cursor_y = _y[4]  { cursor_y = _y[5] }
    else if cursor_y = _y[5]  { cursor_y = _y[6] }
    else if cursor_y = _y[6]  { cursor_y = _y[1] }
}

