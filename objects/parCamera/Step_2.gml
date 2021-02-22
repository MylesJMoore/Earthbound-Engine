if do_follow {
    __view_set( e__VW.XView, 0, min(max(follow_obj.x-__view_get( e__VW.WView, 0 )/2,0),room_width-__view_get( e__VW.WView, 0 )) );
    __view_set( e__VW.YView, 0, min(max(follow_obj.y-__view_get( e__VW.HView, 0 )/2,0),room_height-__view_get( e__VW.HView, 0 )) );
} else {
    __view_set( e__VW.XView, 0, min(max(x-__view_get( e__VW.WView, 0 )/2,0),room_width-__view_get( e__VW.WView, 0 )) );
    __view_set( e__VW.YView, 0, min(max(y-__view_get( e__VW.HView, 0 )/2,0),room_height-__view_get( e__VW.HView, 0 )) );
}
__view_set( e__VW.XView, 0, round(__view_get( e__VW.XView, 0 )) )
__view_set( e__VW.YView, 0, round(__view_get( e__VW.YView, 0 )) )

