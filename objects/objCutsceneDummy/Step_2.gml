if view_follows {
    __view_set( e__VW.XView, 0, min(max(x-__view_get( e__VW.WView, 0 )/2,0),room_width-__view_get( e__VW.WView, 0 )) );
    __view_set( e__VW.YView, 0, min(max(y-__view_get( e__VW.HView, 0 )/2,0),room_height-__view_get( e__VW.HView, 0 )) );
}

