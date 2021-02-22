if instawin_r = 0 {
    draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,color,image_alpha)
} else {
    if instawinstep < 10 {
        draw_set_alpha(0.9)
        draw_set_color(make_color_hsv( (instawinstep++)*50, 255, 255 ) )
        draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+426,__view_get( e__VW.YView, 0 )+240,0)
    }
}

