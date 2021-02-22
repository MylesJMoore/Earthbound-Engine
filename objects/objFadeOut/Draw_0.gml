draw_set_color(c_black)
draw_set_alpha(1)
if state == 0 {
    switch effect_leave {
        case tr_fade:
            draw_set_alpha(counter)
            draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+426,__view_get( e__VW.YView, 0 )+240,0)
            break;
        case tr_cover_l:
            draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+426*counter,__view_get( e__VW.YView, 0 )+240,0) 
            break;
        case tr_cover_r:
            draw_rectangle(__view_get( e__VW.XView, 0 )+426,__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+426*(1-counter),__view_get( e__VW.YView, 0 )+240,0) 
            break;
        case tr_cover_u:
            draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+426,__view_get( e__VW.YView, 0 )+240*counter,0)
            break;
        case tr_cover_d:
            draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+240,__view_get( e__VW.XView, 0 )+426,__view_get( e__VW.YView, 0 )+240*(1-counter),0)
            break;
        case tr_pixel:
            objPersistent.filter = 1;
            objPersistent.pixelsize = max(128*(counter),1); 
            break;
    }
} else {
   switch effect_enter {
        case tr_fade:
            draw_set_alpha(counter)
            draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+426,__view_get( e__VW.YView, 0 )+240,0)
            break;
        case tr_cover_l:
            draw_rectangle(__view_get( e__VW.XView, 0 )+426*(1-counter),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+426,__view_get( e__VW.YView, 0 )+240,0)
            break;
        case tr_cover_r:
            draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+426*(counter),__view_get( e__VW.YView, 0 )+240,0) 
            break;
        case tr_cover_u:
            draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+240*(1-counter),__view_get( e__VW.XView, 0 )+426,__view_get( e__VW.YView, 0 )+240,0)
            break;
        case tr_cover_d:
            draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+240*(counter),__view_get( e__VW.XView, 0 )+426,__view_get( e__VW.YView, 0 ),0)
            break;
        case tr_pixel:
            objPersistent.filter = 1;
            objPersistent.pixelsize = max(128*counter,1); 
            break;
    } 
}
draw_set_alpha(1)

