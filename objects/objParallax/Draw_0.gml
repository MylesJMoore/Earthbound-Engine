draw_set_alpha(1)
for (var i=0;i<10;i++) {
    if back[i] != 0 {
        if tiled[i] {
            if tiledver[i] {
                draw_background_tiled_area(back[i],__view_get( e__VW.XView, 0 )/xpara[i]+xoffset[i],__view_get( e__VW.YView, 0 )/ypara[i]+yoffset[i],__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ));
            } else {
                draw_background_tiled_horizontal(back[i],__view_get( e__VW.XView, 0 )/xpara[i]+xoffset[i],__view_get( e__VW.YView, 0 )/ypara[i]+yoffset[i]);
            }
        } else {
            draw_background(back[i],__view_get( e__VW.XView, 0 )/xpara[i]+xoffset[i],__view_get( e__VW.YView, 0 )/ypara[i]+yoffset[i]);
        }
    }
}

