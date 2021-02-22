
    audio_play_sound(sndselect2,0,0)
    if cursor_y = _y[1] {
        cursor_y = _y[2]
        set_flag(0,1)
    } else if cursor_y = _y[2] {
        cursor_y = _y[3]
        set_flag(0,2)
    } else if cursor_y = _y[3] {
        cursor_y = _y[4]
        set_flag(0,3)
    } else if cursor_y = _y[4] {
        cursor_y = _y[5]
        set_flag(0,4)
    } else if cursor_y = _y[5] {
        cursor_y = _y[6]
        set_flag(0,5)
    } else if cursor_y = _y[6] {
        cursor_y = _y[1]
        set_flag(0,0)
    }


