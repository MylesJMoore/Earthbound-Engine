if ok {
    audio_play_sound(sndchoose,0,0)
    if cursor_y = _y[1] { answer = 0 }
    else if cursor_y = _y[2] { answer = 1 }
    else if cursor_y = _y[3] { answer = 2 }
    else if cursor_y = _y[4] { answer = 3 }
    else if cursor_y = _y[5] { answer = 4 }
    if global.timeline_obj != noone {
        with global.timeline_obj { timeline_running = 1; timeline_speed = 1; } 
        global.t_answer = answer
    } else {
        object.answer = answer
    }
    instance_destroy()
}

