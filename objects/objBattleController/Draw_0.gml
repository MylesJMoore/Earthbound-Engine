draw_set_halign(fa_left)
draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle(426,0,640,240,0)
draw_set_font(global.thenfont3)
draw_rectangle(0,0,426,32,c_black)
draw_rectangle(0,208,426,240,c_black)
draw_set_color(c_white)
if in_battle == 0 {
    draw_window(8+v_offset,8,30,5)
    
    draw_text(_x[1],_y[1],string_hash_to_newline(label_bash[_turn]))
    draw_text(_x[2],_y[1],string_hash_to_newline(label_goods[_turn]))
    draw_text(_x[3],_y[1],string_hash_to_newline(label_run[_turn]))
    draw_text(_x[1],_y[2],string_hash_to_newline(label_guard[_turn]))
    draw_text(_x[2],_y[2],string_hash_to_newline(label_psi[_turn]))
    draw_text(_x[3],_y[2],string_hash_to_newline(label_special[_turn]))
    
    draw_sprite(spr_cursor,cursor_image_index,cursor_x-3,cursor_y+7)
} else {
    draw_set_font(global.thenfont)
    draw_window(8+v_offset,8,38,5)
    draw_set_color(c_white)
    if !instance_exists(objBattleMsg) and msg != "" {
        draw_text(x+16+v_offset,y+14,string_hash_to_newline("@ "+msg))
    }
}



