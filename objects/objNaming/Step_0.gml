cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}

if cursor_y = _y[1] or cursor_y = _y[2] or cursor_y = _y[3]
{
    if cursor_x = _x[10] { cursor_x = _x[12] }
    else if cursor_x = _x[11] { cursor_x = _x[9] } 
}
else if cursor_y = _y[5]
{
    if cursor_x = _x[1] or cursor_x = _x[2] or cursor_x = _x[3] or cursor_x = _x[4] { cursor_x = _x[1] }
    else if cursor_x = _x[6] or cursor_x = _x[7] or cursor_x = _x[8] or cursor_x = _x[9] { cursor_x = _x[5] }
    else if cursor_x = _x[10] or cursor_x = _x[11] { cursor_x = _x[10]; cursor_y = _y[6] }
}
else if cursor_y = _y[6]
{
    if cursor_x = _x[2] or cursor_x = _x[3] { cursor_x = _x[10] }
    else if cursor_x = _x[4] or cursor_x = _x[5] or cursor_x = _x[6] or cursor_x =_x[7] or cursor_x = _x[8] or cursor_x = _x[9] { cursor_x = _x[1] }
    else if cursor_x = _x[11] { cursor_x = _x[14] }
    else if cursor_x = _x[12] or cursor_x = _x[13] { cursor_x = _x[10] }
}

if string_length(the_string) = 0 {
    dontcareindex = 0
}

