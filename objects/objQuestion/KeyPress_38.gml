if ok {
    audio_play_sound(sndselect2,0,0)
    switch choices {
        case 2:
            if cursor_y = _y[1] { cursor_y = _y[2] }
            else if cursor_y = _y[2] { cursor_y = _y[1] }
            break;
        case 3:
            if cursor_y = _y[1] { cursor_y = _y[3] }
            else if cursor_y = _y[2] { cursor_y = _y[1] }
            else if cursor_y = _y[3] { cursor_y = _y[2] }
            break;
        case 4:
            if cursor_y = _y[1] { cursor_y = _y[4] }
            else if cursor_y = _y[2] { cursor_y = _y[1] }
            else if cursor_y = _y[3] { cursor_y = _y[2] }
            else if cursor_y = _y[4] { cursor_y = _y[3] }
            break;
        case 5:
            if cursor_y = _y[1] { cursor_y = _y[5] }
            else if cursor_y = _y[2] { cursor_y = _y[1] }
            else if cursor_y = _y[3] { cursor_y = _y[2] }
            else if cursor_y = _y[4] { cursor_y = _y[3] }
            else if cursor_y = _y[5] { cursor_y = _y[4] }
            break;
    }
}

