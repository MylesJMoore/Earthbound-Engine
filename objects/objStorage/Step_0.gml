/// @description Keyboard controls
if ok {
    if (keyboard_check_pressed(vk_left)) {
        audio_play_sound(sndselect,0,0)
        if cursor_x = _x[2]
        {
        cursor_x = _x[1]
        }
        else if cursor_x = _x[1]
        {
        cursor_x = _x[2]
        }
    } else if (keyboard_check_pressed(vk_right)){
        audio_play_sound(sndselect,0,0)
        if cursor_x = _x[1]
        {
        cursor_x = _x[2]
        }
        else if cursor_x = _x[2]
        {
        cursor_x = _x[1]
        }
    } else if (keyboard_check_pressed(vk_down)){
        audio_play_sound(sndselect2,0,0)
        if cursor_y = _y[1]
        {
        cursor_y = _y[2]
        }
        else if cursor_y = _y[2]
        {
        cursor_y = _y[3]
        }
        else if cursor_y = _y[3]
        {
        cursor_y = _y[4]
        }
        else if cursor_y = _y[4]
        {
        cursor_y = _y[5]
        }
        else if cursor_y = _y[5]
        {
        cursor_y = _y[6]
        }
        else if cursor_y = _y[6]
        {
        cursor_y = _y[7]
        }
        else if cursor_y = _y[7]
        {
        cursor_y = _y[8]
        }
        else if cursor_y = _y[8]
        {
        cursor_y = _y[9]
        }
        else if cursor_y = _y[9]
        {
        cursor_y = _y[10]
        }
        else if cursor_y = _y[10]
        {
        cursor_y = _y[1]
        page++
        event_user(0)
        }
    } else if (keyboard_check_pressed(vk_up)){
        audio_play_sound(sndselect2,0,0)

        if cursor_y = _y[1]
        {
            if page > 0 {
                cursor_y = _y[10]
                page--
                event_user(0)
            }
        }
        else if cursor_y = _y[2]
        {
        cursor_y = _y[1]
        }
        else if cursor_y = _y[3]
        {
        cursor_y = _y[2]
        }
        else if cursor_y = _y[4]
        {
        cursor_y = _y[3]
        }
        else if cursor_y = _y[5]
        {
        cursor_y = _y[4]
        }
        else if cursor_y = _y[6]
        {
        cursor_y = _y[5]
        }
        else if cursor_y = _y[7]
        {
        cursor_y = _y[6]
        }
        else if cursor_y = _y[8]
        {
        cursor_y = _y[7]
        }
        else if cursor_y = _y[9]
        {
        cursor_y = _y[8]
        }
        else if cursor_y = _y[10]
        {
        cursor_y = _y[9]
        }
    } else if (keyboard_check_pressed(global.kb_choose)){
        if !is_undefined(num) and global.pl_count != 0 {
            audio_play_sound(sndchoose,0,0)
            keyboard_clear(global.kb_choose)
            switch add_item_ext(num) {
                case -1:
                    object.item = -1;
                    break;
                default:
                    object.item = num;
                    del_item_storage(page*20+num_val)
                    break;
            }
            instance_destroy()
        }
    } else if (keyboard_check_pressed(global.kb_back)){
        object.item = 0;
        audio_play_sound(sndback,0,0)
        instance_destroy()
    }
}

x = __view_get( e__VW.XView, 0 )
y = __view_get( e__VW.YView, 0 )

cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}

///Does all the work

if cursor_x = _x[1] and cursor_y = _y[1] { num = storage[1]; num_val = 0; }
if cursor_x = _x[2] and cursor_y = _y[1] { num = storage[2]; num_val = 1; }
if cursor_x = _x[1] and cursor_y = _y[2] { num = storage[3]; num_val = 2; }
if cursor_x = _x[2] and cursor_y = _y[2] { num = storage[4]; num_val = 3; }
if cursor_x = _x[1] and cursor_y = _y[3] { num = storage[5]; num_val = 4; }
if cursor_x = _x[2] and cursor_y = _y[3] { num = storage[6]; num_val = 5; }
if cursor_x = _x[1] and cursor_y = _y[4] { num = storage[7]; num_val = 6; }
if cursor_x = _x[2] and cursor_y = _y[4] { num = storage[8]; num_val = 7; }
if cursor_x = _x[1] and cursor_y = _y[5] { num = storage[9]; num_val = 8; }
if cursor_x = _x[2] and cursor_y = _y[5] { num = storage[10]; num_val = 9; }
if cursor_x = _x[1] and cursor_y = _y[6] { num = storage[11]; num_val = 10; }
if cursor_x = _x[2] and cursor_y = _y[6] { num = storage[12]; num_val = 11; }
if cursor_x = _x[1] and cursor_y = _y[7] { num = storage[13]; num_val = 12; }
if cursor_x = _x[2] and cursor_y = _y[7] { num = storage[14]; num_val = 13; }
if cursor_x = _x[1] and cursor_y = _y[8] { num = storage[15]; num_val = 14; }
if cursor_x = _x[2] and cursor_y = _y[8] { num = storage[16]; num_val = 15; }
if cursor_x = _x[1] and cursor_y = _y[9] { num = storage[17]; num_val = 16; }
if cursor_x = _x[2] and cursor_y = _y[9] { num = storage[18]; num_val = 17; }
if cursor_x = _x[1] and cursor_y = _y[10] { num = storage[19]; num_val = 18; }
if cursor_x = _x[2] and cursor_y = _y[10] { num = storage[20]; num_val = 19; }

