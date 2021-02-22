/// @description Deals with the application surface, filtering, and fading

draw_enable_alphablend(0)
if filter = 0 {
    //No Filter
    if !window_get_fullscreen() {
        draw_surface_stretched(application_surface,0,0,__view_get( e__VW.WView, 0 )*scale,__view_get( e__VW.HView, 0 )*scale)
    } else {
        draw_surface_stretched(application_surface,0,0,display_get_width(),display_get_height())
    }
} else if filter = 1 {
    //Pixel Filter
    shader_set(shPixel)
    shader_set_uniform_f(pixel,__view_get( e__VW.WView, 0 )*3,__view_get( e__VW.HView, 0 )*3,pixelsize,pixelsize)//background width,background height,pixel width,pixel height
    if !window_get_fullscreen() {
        draw_surface_stretched(application_surface,0,0,__view_get( e__VW.WView, 0 )*scale,__view_get( e__VW.HView, 0 )*scale)
    } else {
        draw_surface_stretched(application_surface,0,0,display_get_width(),display_get_height())
    }
    shader_reset()
}
draw_enable_alphablend(1)

