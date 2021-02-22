if visible { draw_self() }

if active or timer > 0 {
    draw_set_alpha(timer/600)
    draw_set_color(make_color_rgb(255,222,255))
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+426,__view_get( e__VW.YView, 0 )+240,0)
    draw_set_color(c_white)
}

