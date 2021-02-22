/// @description  Move the player to saved position
if global.thex > 0 and global.they > 0 and room != rmGameOver {
    x = global.thex
    y = global.they
    direction = global.thedir
}

event_user(0)

///Event stuff

///Views

__view_set( e__VW.XView, 0, round(__view_get( e__VW.XView, 0 )) )
__view_set( e__VW.YView, 0, round(__view_get( e__VW.YView, 0 )) )

if !global.cutscene or get_flag(28) {
    __view_set( e__VW.XView, 0, min(max(x-__view_get( e__VW.WView, 0 )/2,0),room_width-__view_get( e__VW.WView, 0 )) );
    __view_set( e__VW.YView, 0, min(max(y-__view_get( e__VW.HView, 0 )/2,0),room_height-__view_get( e__VW.HView, 0 )) );
    __view_set( e__VW.XView, 0, round(__view_get( e__VW.XView, 0 )) )
    __view_set( e__VW.YView, 0, round(__view_get( e__VW.YView, 0 )) )
}

