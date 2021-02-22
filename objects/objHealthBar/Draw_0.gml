draw_set_alpha(1)
draw_set_color(image_blend)
draw_set_font(global.thenfont2)
draw_set_halign(fa_center)

//Draw the box
draw_self()
//Draw layer 1
draw_sprite(overlay,overlay_image_index,x,y)
//Draw layer 2
draw_sprite(overlay2,overlay2_image_index,x,y)

//Draw the player's name
draw_text(x+28,y+9,string_hash_to_newline(global.s_name[pl]))

//Draw rolling meters
if !global.dead[pl] {
    draw_odometer(hp_actual,x+24,y+24)
    if !global.s_cantconcentrate[pl] {
        draw_odometer(pp_actual,x+24,y+40)
    } else {
        draw_sprite(sprNoPSI,0,x+24,y+40)
    }
}

