var a = instance_create(0,0,objTextBox);
if image_index != 1 {
    a.strno = 1;
    a.str[0] = "@ " + global.s_name[1] + " opened the present."
    if item = -1 {
        a.str[1] = "@ But it was empty."
    } else {
        a.str[1] = "@ Inside the present, there was "+global.item[item,17]+global.item[item,1]+"!"
    }
    audio_play_sound(sndpresent,0,0)
    alarm[1] = 1;
} else {
    a.strno = 0;
    a.str[0] = "@ It's empty."
}

