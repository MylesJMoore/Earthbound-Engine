if sprite_index != sprNull {
    draw_sprite_ext(sprite_index,image_index,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y-16,growthrate,growthrate,0,c_white,alpha)
}
draw_set_font(global.theifont)
draw_set_halign(fa_center)
draw_text_transformed_colour(__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,string_hash_to_newline(text),growthrate,growthrate,0,c_white,c_white,c_white,c_white,alpha)

