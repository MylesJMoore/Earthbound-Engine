if !inactive {
    audio_play_sound(sndselect,0,0)
    if player < 7 {
        if cursor_x = _x[1] { cursor_x = _x[14] }
        else if cursor_x = _x[2] { cursor_x = _x[1] }
        else if cursor_x = _x[3] { cursor_x = _x[2] }
        else if cursor_x = _x[4] { cursor_x = _x[3] }
        else if cursor_x = _x[5] { 
            if cursor_y = _y[5] { 
                cursor_x = _x[1] 
            } else {
                cursor_x = _x[4] 
            }
        }
        else if cursor_x = _x[6] { cursor_x = _x[5] }
        else if cursor_x = _x[7] { cursor_x = _x[6] }
        else if cursor_x = _x[8] { cursor_x = _x[7] }
        else if cursor_x = _x[9] { cursor_x = _x[8] }
        else if cursor_x = _x[10] { cursor_x = _x[9] }
        else if cursor_x = _x[11] { cursor_x = _x[10] }
        else if cursor_x = _x[12] { 
            if cursor_y = _y[4] { 
                cursor_x = _x[10] 
            } else if cursor_y = _y[5] { 
                cursor_x = _x[5] 
            } else { 
                cursor_x = _x[11] 
            } 
        }
        else if cursor_x = _x[13] { cursor_x = _x[12] }
        else if cursor_x = _x[14] { cursor_x = _x[13] }
    } else {
        if cursor_x = _x[10] { cursor_x = _x[14] }
        else { cursor_x = _x[10] }
    }
}

