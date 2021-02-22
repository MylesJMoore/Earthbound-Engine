if !inactive and player < 7 {
    audio_play_sound(sndback,0,0)

    if string_length(the_string) > 0 {
        the_string = string_delete(the_string,string_length(the_string),1)
    }
}

