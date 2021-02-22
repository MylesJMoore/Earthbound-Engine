draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_font(global.thenfont)
draw_set_color(c_white)
if draw_top {
    draw_window(__view_get( e__VW.XView, 0 )+8+v_offset,__view_get( e__VW.YView, 0 )+4,38,(2*choices+1))
    draw_text(__view_get( e__VW.XView, 0 )+20+v_offset,_y[1],string_hash_to_newline(choice[0]+"#"+choice[1]+"#"+choice[2]+"#"+choice[3]+"#"+choice[4]))
} else {
    draw_window(__view_get( e__VW.XView, 0 )+8+v_offset,__view_get( e__VW.YView, 0 )+235-8*(2*choices+1),38,(2*choices+1))
    draw_text(__view_get( e__VW.XView, 0 )+20+v_offset,_y[1],string_hash_to_newline(choice[0]+"#"+choice[1]+"#"+choice[2]+"#"+choice[3]+"#"+choice[4]))
}
draw_sprite(spr_cursor,cursor_image_index,__view_get( e__VW.XView, 0 )+17+v_offset,cursor_y+8)

