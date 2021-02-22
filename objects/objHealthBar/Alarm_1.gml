/// @description Set positions and create ailments bubble
global.healthbar[pl] = id;
hp_actual = global.s_hp[pl];
pp_actual = global.s_pp[pl];

status = instance_create(x+32,y-12,objAilmentsBubble)
status.pl = pl

if global.pl_count = 1 {
    x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-28
} else if global.pl_count = 2 {
    switch pl {
        case 1:
            x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-56
            break;
        case 2:
            x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
            break;
    }
} else if global.pl_count = 3 {
    switch pl {
        case 1:
            x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-84
            break;
        case 2:
            x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-28
            break;
        case 3:
            x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+28
            break;
    }
} else {
    switch pl {
        case 1:
            x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-112
            break;
        case 2:
            x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-56
            break;
        case 3:
            x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
            break;
        case 4:
            x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+56
            break;
    }
}

visible = !(pl > global.pl_count)

xstart = x
ystart = y

