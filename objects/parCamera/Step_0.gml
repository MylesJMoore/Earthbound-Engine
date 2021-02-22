audio_listener_position(x, y, 0);

if follow_obj != self {
    if (x < follow_obj.x -1 or x > follow_obj.x+1) and (y < follow_obj.y -1 or y > follow_obj.y+1){
        move_towards_point(round(follow_obj.x),round(follow_obj.y),follow_spd)
    } else {
        do_follow = 1
    }
}


