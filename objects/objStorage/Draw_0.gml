draw_set_alpha(1)
draw_set_font(global.thenfont)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_window(__view_get( e__VW.XView, 0 )+72+v_offset,__view_get( e__VW.YView, 0 )+32,30,19)
draw_window(__view_get( e__VW.XView, 0 )+72+v_offset,__view_get( e__VW.YView, 0 )+8,7,3)
draw_window(__view_get( e__VW.XView, 0 )+72+v_offset,__view_get( e__VW.YView, 0 )+192,30,5)
draw_window(__view_get( e__VW.XView, 0 )+8+v_offset,__view_get( e__VW.YView, 0 )+8,8,4)
draw_text(__view_get( e__VW.XView, 0 )+20+v_offset,__view_get( e__VW.YView, 0 )+18,string_hash_to_newline("Checkout"))

draw_text(_x[1],__view_get( e__VW.YView, 0 )+14,string_hash_to_newline("Page "+string(page+1)))
draw_text(_x[1],_y[1],string_hash_to_newline(global.item[storage[1],1]))
draw_text(_x[2],_y[1],string_hash_to_newline(global.item[storage[2],1]))
draw_text(_x[1],_y[2],string_hash_to_newline(global.item[storage[3],1]))
draw_text(_x[2],_y[2],string_hash_to_newline(global.item[storage[4],1]))
draw_text(_x[1],_y[3],string_hash_to_newline(global.item[storage[5],1]))
draw_text(_x[2],_y[3],string_hash_to_newline(global.item[storage[6],1]))
draw_text(_x[1],_y[4],string_hash_to_newline(global.item[storage[7],1]))
draw_text(_x[2],_y[4],string_hash_to_newline(global.item[storage[8],1]))
draw_text(_x[1],_y[5],string_hash_to_newline(global.item[storage[9],1]))
draw_text(_x[2],_y[5],string_hash_to_newline(global.item[storage[10],1]))
draw_text(_x[1],_y[6],string_hash_to_newline(global.item[storage[11],1]))
draw_text(_x[2],_y[6],string_hash_to_newline(global.item[storage[12],1]))
draw_text(_x[1],_y[7],string_hash_to_newline(global.item[storage[13],1]))
draw_text(_x[2],_y[7],string_hash_to_newline(global.item[storage[14],1]))
draw_text(_x[1],_y[8],string_hash_to_newline(global.item[storage[15],1]))
draw_text(_x[2],_y[8],string_hash_to_newline(global.item[storage[16],1]))
draw_text(_x[1],_y[9],string_hash_to_newline(global.item[storage[17],1]))
draw_text(_x[2],_y[9],string_hash_to_newline(global.item[storage[18],1]))
draw_text(_x[1],_y[10],string_hash_to_newline(global.item[storage[19],1]))
draw_text(_x[2],_y[10],string_hash_to_newline(global.item[storage[20],1]))

draw_text(_x[1],y+199,string_hash_to_newline(global.item[num,2]))

draw_sprite(spr_cursor,cursor_image_index,cursor_x-3,cursor_y+8)
