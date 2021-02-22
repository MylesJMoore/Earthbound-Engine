draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_color(c_white)

if name[message_display] != "" {
    draw_window(__view_get( e__VW.XView, 0 )+65,__view_get( e__VW.YView, 0 )+iff(draw_top,35,164),8,5)
}

if !(instance_exists(objTitleCard) or room = rmGameOver or room = rmFallback) {
    draw_window(__view_get( e__VW.XView, 0 )+61,__view_get( e__VW.YView, 0 )+iff(draw_top,4,179),38,7)
}

//Draw the name
draw_set_font(global.thenfont2)
if name[message_display] != "" {
    draw_text(__view_get( e__VW.XView, 0 )+72,__view_get( e__VW.YView, 0 )+iff(draw_top,59,168),string_hash_to_newline(name[message_display]))
} 

//Draw the message
draw_set_font(global.thenfont)
draw_text(__view_get( e__VW.XView, 0 )+69,__view_get( e__VW.YView, 0 )+iff(draw_top,12,187),string_hash_to_newline(display_string))

//If the message is done typing out...
if string_length(display_string) = string_length(str[message_display]) or stop { 
    draw_sprite_ext(spr_continue,cursor_image_index,__view_get( e__VW.XView, 0 )+350,__view_get( e__VW.YView, 0 )+iff(draw_top,54,229),1,1,0,c_white,image_alpha) 
}

