draw_set_alpha(1)
draw_set_font(global.thenfont3)
draw_set_halign(fa_left)
draw_window(__view_get( e__VW.XView, 0 )+v_offset,__view_get( e__VW.YView, 0 )+8,8,11)
draw_window(__view_get( e__VW.XView, 0 )+v_offset,__view_get( e__VW.YView, 0 )+104,8,4)
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+12+v_offset,__view_get( e__VW.YView, 0 )+18,string_hash_to_newline("4 Goods"+"#"+"- Equip"+"#"+"6 Skills"+"#"+", Stats"+"#"+"5 Quit"))
draw_set_halign(fa_right)
draw_set_font(global.thenfont)
draw_text(__view_get( e__VW.XView, 0 )+48+v_offset,__view_get( e__VW.YView, 0 )+114,string_hash_to_newline("$"+string(global.money)))
draw_sprite(spr_cursor,cursor_image_index,__view_get( e__VW.XView, 0 )+9+v_offset,__view_get( e__VW.YView, 0 )+cursor_y)

// Log stuff. Removed.
//draw_window(view_xview+v_offset,view_yview+8,8,iff(can_use_log,13,11))
//draw_window(view_xview+v_offset,view_yview+iff(can_use_log,120,104),8,4)
//draw_text(view_xview+12+v_offset,view_yview+18,"4 Goods"+"#"+"- Equip"+"#"+"6 Skills"+"#"+", Stats"+iff(can_use_log,"#+ Log","")+"#"+"5 Quit")
//draw_text(view_xview+48+v_offset,view_yview+iff(can_use_log,130,114),"$"+string(global.money))

