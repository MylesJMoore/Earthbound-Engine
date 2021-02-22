if ok {
    draw_set_halign(fa_left)
    draw_set_color(c_white)
    draw_set_alpha(1)
    draw_window(x+8,__view_get( e__VW.YView, 0 )+192,38,5)
    draw_window(x+8,__view_get( e__VW.YView, 0 )+120,18,6)
    draw_set_font(global.thenfont)
    draw_text(x+16,__view_get( e__VW.YView, 0 )+198,string_hash_to_newline(text))
    draw_text(x+16,__view_get( e__VW.YView, 0 )+130,string_hash_to_newline("Money on hand:#Money on account:"))
    
    for (var i=0;i<10;i++){
        draw_text(x+160-10*i,__view_get( e__VW.YView, 0 )+212,string_hash_to_newline(string(number[i])))
    } 
    draw_text(x+60,__view_get( e__VW.YView, 0 )+212,string_hash_to_newline("$"))
    draw_sprite(spr_continue,cursor_image_index,x+157-10*place,__view_get( e__VW.YView, 0 )+223)
    draw_sprite_ext(spr_continue,cursor_image_index,x+157-10*place,__view_get( e__VW.YView, 0 )+213,1,-1,0,c_white,1)
    draw_set_halign(fa_right)
    draw_text(x+144,__view_get( e__VW.YView, 0 )+130,string_hash_to_newline("$"+string(global.money)+"#$"+string(global.money_saved)))
}

