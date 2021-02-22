/// @description Bouncing off solids
if speed > 0 { image_speed = 0.15/(2*global.s_numb[1]+1)} else { image_speed = 0 } 

collision_handle();

///Handling party movement
var more;
more = 1 // This adds an additional gap between party members. 1 by default, don't set it to zero! 

if(hspeed != 0 or vspeed != 0){
    for(var c = 5*10*more;c > 0;c -= 1){
        prevx[c] = prevx[c - 1]
        prevy[c] = prevy[c - 1]
        prevd[c] = prevd[c - 1]
    }
    prevx[0] = x
    prevy[0] = y
    prevd[0] = direction
}

//Party members' direction handle and position update
with(objPartyCharacter){
    x = other.prevx[player_index*10*more]
    y = other.prevy[player_index*10*more]
    direction = other.prevd[player_index*10*more]
    if !(direction = 0 or direction = 90 or direction = 180 or direction = 270) and player_index > 1 {
        x = floor(x)
        y = floor(y)
    }
}

///Views
if !global.cutscene or get_flag(28) {
    __view_set( e__VW.XView, 0, min(max(x-__view_get( e__VW.WView, 0 )/2,0),room_width-__view_get( e__VW.WView, 0 )) );
    __view_set( e__VW.YView, 0, min(max(y-__view_get( e__VW.HView, 0 )/2,0),room_height-__view_get( e__VW.HView, 0 )) );
    __view_set( e__VW.XView, 0, round(__view_get( e__VW.XView, 0 )) )
    __view_set( e__VW.YView, 0, round(__view_get( e__VW.YView, 0 )) )
}

