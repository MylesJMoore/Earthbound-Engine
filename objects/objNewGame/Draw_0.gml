draw_set_alpha(1)
draw_set_font(global.thenfont)
draw_set_halign(fa_left)
draw_window(8+v_offset,8,38,14)
draw_set_color(c_white)
draw_text(_x[1],_y[1],string_hash_to_newline(text[1]))
draw_text(_x[1],_y[2],string_hash_to_newline(text[2]))
draw_text(_x[1],_y[3],string_hash_to_newline(text[3]))
if mode > 0 {
    draw_window(8+v_offset,128,8,5)
    draw_text(_x[1],_y[4],string_hash_to_newline("Continue"))
    draw_text(_x[1],_y[5],string_hash_to_newline("Delete"))
}

if mode = 2 {
    draw_window(80+v_offset,128,29,5)
    draw_text(_x[2],_y[4],string_hash_to_newline("Are you sure? This can't be undone!"))
    draw_text(_x[3],_y[5],string_hash_to_newline("No"))
    draw_text(_x[4],_y[5],string_hash_to_newline("Yes"))
}
draw_sprite(spr_cursor,cursor_image_index,cursor_x-2,cursor_y+7)

