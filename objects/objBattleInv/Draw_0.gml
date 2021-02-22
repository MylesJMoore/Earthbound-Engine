draw_set_alpha(1)
draw_window(x+v_offset,y+8,36,8)
draw_set_font(global.thenfont)
draw_set_halign(fa_left)
draw_set_color(c_white)

if !instance_exists(objPlayerSelector) and !instance_exists(objTargetSelector) {
    draw_window(16+v_offset,192,36,6)
    draw_text_ext(_x[1]-6,198,string_hash_to_newline(global.item[num,2]),12,500)
}

draw_text(_x[1],_y[1],string_hash_to_newline(eqp[1]+global.item[inv[1],1]))
draw_text(_x[2],_y[1],string_hash_to_newline(eqp[2]+global.item[inv[2],1]))
draw_text(_x[1],_y[2],string_hash_to_newline(eqp[3]+global.item[inv[3],1]))
draw_text(_x[2],_y[2],string_hash_to_newline(eqp[4]+global.item[inv[4],1]))
draw_text(_x[1],_y[3],string_hash_to_newline(eqp[5]+global.item[inv[5],1]))
draw_text(_x[2],_y[3],string_hash_to_newline(eqp[6]+global.item[inv[6],1]))
draw_text(_x[1],_y[4],string_hash_to_newline(eqp[7]+global.item[inv[7],1]))
draw_text(_x[2],_y[4],string_hash_to_newline(eqp[8]+global.item[inv[8],1]))
draw_text(_x[1],_y[5],string_hash_to_newline(eqp[9]+global.item[inv[9],1]))
draw_text(_x[2],_y[5],string_hash_to_newline(eqp[10]+global.item[inv[10],1]))

draw_set_color(c_black)

if page == 2 {
    draw_sprite_ext(spr_continue,cursor_image_index,155+v_offset,6+8,1,-1,0,c_white,1)
} else {
    draw_sprite_ext(spr_continue,cursor_image_index,155+v_offset,57+8,1,1,0,c_white,1)
}

draw_sprite(spr_cursor,cursor_image_index,cursor_x-3,cursor_y+8)

