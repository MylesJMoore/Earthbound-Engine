cursor_timer +=0.25

if cursor_timer = 1 {
    cursor_image_index +=1
    cursor_timer = 0
}

// Show the next message or close the box
if keyboard_check_pressed(global.kb_choose) {
    if string_length(display_string) = string_length(str[message_display]) or stop {
        if message_display != strno {
            stop = 0
            message_display +=1
            display_string = ""
            position = 0
            display_position = 0
            //width_counter = 0
            last_space = 0
            alarm[1] = text_speed
        } else {
            if over = false {
                alarm[0]=1
                over = true
                exit
            }
        }
    }
}

// Show all the text at once
if keyboard_check_pressed(global.kb_back) {
    str[message_display] = string_replace(str[message_display],"{","")
    display_string = str[message_display]
    stop = 1
}

///Handle typing messages
//strno = max(array_length_1d(str) - 1,0)
if string_length(display_string) != string_length(str[message_display]) and !stop and can_type {
    scr_type()
    if string_char_at(str[message_display],display_position) = "{" or string_char_at(str[message_display],display_position+1) = "@" {
        //Add a pause but don't remove line breaks
        if display_position > 1 {
            if string_char_at(str[message_display],display_position) = "{" {
                if !audio_is_playing(sndtext) audio_play_sound(sndtext,0,0)
                str[message_display] = string_delete(str[message_display],display_position,1)
                display_string = string_copy(str[message_display],1,display_position)
            }
            can_type = 0
            alarm[1] = 20*text_speed
        }
    } else {
        // Type normally
        if !audio_is_playing(sndtext) audio_play_sound(sndtext,0,0)
        //alarm[1] = text_speed
    }
}

