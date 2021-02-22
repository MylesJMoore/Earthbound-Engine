
    draw_set_alpha(1)

    draw_set_font(global.thenfont)
    draw_set_halign(fa_left)
    draw_set_color(c_white)
    if room != rmBattle {
        draw_window(__view_get( e__VW.XView, 0 )+8+v_offset,__view_get( e__VW.YView, 0 )+8,38,5)
    }
    if str[message_display] != "YOU WONZ"{
        draw_text(__view_get( e__VW.XView, 0 )+16+v_offset,__view_get( e__VW.YView, 0 )+14,string_hash_to_newline("@ "+display_string))
    } else {
        draw_set_font(yw_font)
        draw_set_halign(fa_center)
        draw_text(__view_get( e__VW.XView, 0 )+160+v_offset,__view_get( e__VW.YView, 0 )+16,string_hash_to_newline(display_string))
    }
    
    //If the message is done typing out...
    if string_length(display_string) = string_length(str[message_display]) or stop { 
        draw_sprite_ext(spr_continue,cursor_image_index,__view_get( e__VW.XView, 0 )+350,__view_get( e__VW.YView, 0 )+40,1,1,0,c_white,image_alpha) 
    }

