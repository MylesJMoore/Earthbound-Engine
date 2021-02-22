draw_set_alpha(1)
draw_window(x,y,6,7)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_set_font(global.thenfont)
draw_text_ext(_x[1],_y[1],string_hash_to_newline("Use#Give#Drop"),12,100)

if mode == 1 or mode == 3 {
    draw_window(x+48,y,10,8)
    switch global.pl_count {
        case 1:
            draw_text_ext(_x[2]+3,_y[1],string_hash_to_newline(global.s_name[1]),12,100)
            break;
        case 2:
            draw_text_ext(_x[2]+3,_y[1],string_hash_to_newline(global.s_name[1]+"#"+global.s_name[2]),12,100)
            break;
        case 3:
            draw_text_ext(_x[2]+3,_y[1],string_hash_to_newline(global.s_name[1]+"#"+global.s_name[2]+"#"+global.s_name[3]),12,100)
            break;
        case 4:
            draw_text_ext(_x[2]+3,_y[1],string_hash_to_newline(global.s_name[1]+"#"+global.s_name[2]+"#"+global.s_name[3]+"#"+global.s_name[4]),12,100)
            break;
    }
}

draw_sprite(spr_cursor,cursor_image_index,cursor_x,cursor_y+8)

