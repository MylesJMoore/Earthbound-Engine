draw_set_alpha(1)
draw_set_font(global.thenfont)
draw_set_halign(fa_left)
draw_window(8+v_offset,128,38,13)
draw_set_color(c_white)
draw_text(_x[1],_y[0],string_hash_to_newline("Select a skin for the game windows."))
draw_text(_x[1],_y[1],string_hash_to_newline("Monochrome"))
draw_text(_x[1],_y[2],string_hash_to_newline("Space"))
draw_text(_x[1],_y[3],string_hash_to_newline("Desert"))
draw_text(_x[1],_y[4],string_hash_to_newline("Girly"))
draw_text(_x[1],_y[5],string_hash_to_newline("Autumn"))
draw_text(_x[1],_y[6],string_hash_to_newline("Dreamy"))
draw_sprite(spr_cursor,cursor_image_index,cursor_x-2,cursor_y+7)
