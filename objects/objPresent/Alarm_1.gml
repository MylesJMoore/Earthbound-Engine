if instance_exists(objTextBox) {
    alarm[1] = 1
} else {
    if item = -1 {
        ds_map_replace(global.presents,pid,0)
        image_index = 1
    } else {
        var a;
        a = instance_create(0,0,objTextBox);
        a.strno = 0
        b = add_item_ext(item);
        if b = -1 {
            if global.pl_count = 1 {
                a.str[0] = "@ But "+global.s_name[1]+" was carrying too much stuff already."
            } else {
                a.str[0] = "@ But everyone was carrying too much stuff already."
            }
        } else {
            a.str[0] = "@ "+global.s_name[b+1]+" took it."
            ds_map_replace(global.presents,pid,0)
            image_index = 1
            audio_play_sound(snditemget1,0,0)
        }
    }
}

