if !inactive {
    if (player <=4 and string_length(the_string) < 6) or (player > 4 and string_length(the_string) < 9) {
        audio_play_sound(sndchoose,0,0)
        if cursor_y = _y[1] {
            if cursor_x = _x[1] { if capital { char = "A" } else { char = "a" } }
            if cursor_x = _x[2] { if capital { char = "B" } else { char = "b" } }
            if cursor_x = _x[3] { if capital { char = "C" } else { char = "c" } }
            if cursor_x = _x[4] { if capital { char = "D" } else { char = "d" } }
            if cursor_x = _x[5] { if capital { char = "E" } else { char = "e" } }
            if cursor_x = _x[6] { if capital { char = "F" } else { char = "f" } }
            if cursor_x = _x[7] { if capital { char = "G" } else { char = "g" } }
            if cursor_x = _x[8] { if capital { char = "H" } else { char = "h" } }
            if cursor_x = _x[9] { if capital { char = "I" } else { char = "i" } }
            if cursor_x = _x[12] { char = "-" }
            if cursor_x = _x[13] { char = "@" }
            if cursor_x = _x[14] { char = "[" }
            the_string = string_insert(char,the_string,string_length(the_string)+1)
            exit
        } else if cursor_y = _y[2] {
            if cursor_x = _x[1] { if capital { char = "J" } else { char = "j" } }
            if cursor_x = _x[2] { if capital { char = "K" } else { char = "k" } }
            if cursor_x = _x[3] { if capital { char = "L" } else { char = "l" } }
            if cursor_x = _x[4] { if capital { char = "M" } else { char = "m" } }
            if cursor_x = _x[5] { if capital { char = "N" } else { char = "n" } }
            if cursor_x = _x[6] { if capital { char = "O" } else { char = "o" } }
            if cursor_x = _x[7] { if capital { char = "P" } else { char = "p" } }
            if cursor_x = _x[8] { if capital { char = "Q" } else { char = "q" } }
            if cursor_x = _x[9] { if capital { char = "R" } else { char = "r" } }
            if cursor_x = _x[12] { char = "'" }
            if cursor_x = _x[13] { char = "~" }
            if cursor_x = _x[14] { char = "\\" }
            the_string = string_insert(char,the_string,string_length(the_string)+1)
            exit
        } else if cursor_y = _y[3] {
            if cursor_x = _x[1] { if capital { char = "S" } else { char = "s" } }
            if cursor_x = _x[2] { if capital { char = "T" } else { char = "t" } }
            if cursor_x = _x[3] { if capital { char = "U" } else { char = "u" } }
            if cursor_x = _x[4] { if capital { char = "V" } else { char = "v" } }
            if cursor_x = _x[5] { if capital { char = "W" } else { char = "w" } }
            if cursor_x = _x[6] { if capital { char = "X" } else { char = "x" } }
            if cursor_x = _x[7] { if capital { char = "Y" } else { char = "y" } }
            if cursor_x = _x[8] { if capital { char = "Z" } else { char = "z" } }
            if cursor_x = _x[9] { if capital { char = " " } else { char = " " } }
            if cursor_x = _x[12] { char = "." }
            if cursor_x = _x[13] { char = "/" }
            if cursor_x = _x[14] { char = "]" }
            the_string = string_insert(char,the_string,string_length(the_string)+1)
            exit
        } else if cursor_y = _y[4] {
            if cursor_x = _x[1] { char = "0" }
            if cursor_x = _x[2] { char = "1" }
            if cursor_x = _x[3] { char = "2" }
            if cursor_x = _x[4] { char = "3" }
            if cursor_x = _x[5] { char = "4" }
            if cursor_x = _x[6] { char = "5" }
            if cursor_x = _x[7] { char = "6" }
            if cursor_x = _x[8] { char = "7" }
            if cursor_x = _x[9] { char = "8" }
            if cursor_x = _x[10] { char = "9" }
            if cursor_x = _x[12] { char = "!" }
            if cursor_x = _x[13] { char = "|" }
            if cursor_x = _x[14] { char = "^" }
            the_string = string_insert(char,the_string,string_length(the_string)+1)
            exit
        } else if cursor_y = _y[5]
        {
            if cursor_x = _x[1] { capital = true }
            if cursor_x = _x[5] { capital = false }
            if cursor_x = _x[12] { char = "?" }
            if cursor_x = _x[13] { char = "$" }
            if cursor_x = _x[14] { char = "_" }
            if cursor_x != _x[1] and cursor_x != _x[5] { the_string = string_insert(char,the_string,string_length(the_string)+1) }
            exit
        }
    }
    
    if cursor_y = _y[6]
    {
        if cursor_x = _x[1] { 
            the_string = dontcare[player,dontcareindex]
            if dontcareindex != 7 { 
                dontcareindex ++ 
            } else { 
                dontcareindex = 0 
            }
            audio_play_sound(sndchoose,0,0) 
        } else if cursor_x = _x[10] 
        { 
            if !done {
                if string_length(the_string) > 0 {
                    the_string = string_delete(the_string,string_length(the_string),1)
                }
            } else {
                audio_stop_all()
                ini_save_data(0,0)
                audio_play_sound(sndWow,0,0)
                inactive = 1
                alarm[0] = 5*room_speed
            }
        } else if cursor_x = _x[14] {
            if !done  {
                if string_length(the_string) > 0 { 
                    if player <= 4 {
                        global.s_name[player] = the_string
                    } else if player = 5 {
                        global.favfood = the_string
                    } else if player = 6 {
                        global.favthing = the_string
                    }
                    player++
                    dontcareindex = 0
                    the_string = ""
                    audio_play_sound(sndokdesuka,0,0) 
                    if player = 7 { 
                        done = 1 
                        player++
                        cursor_x = _x[10]
                        cursor_y = _y[6]
                    } else {
                        cursor_x = _x[1]
                        cursor_y = _y[1]
                    }
                } else {
                    audio_play_sound(snderror,0,0) 
                }
            } else {
                audio_play_sound(sndchoose,0,0) 
                global.theroom = room
                instance_create(0,0,objFadeOut)
            }
        }
    }
}

