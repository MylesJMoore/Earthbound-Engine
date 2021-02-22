for (var i=1;i<global.pl_count+1;i++) {
    with global.healthbar[i] { image_blend = c_white; alarm[2] = 0 } 
}

if global.item[num,4] > 0 {
    for (var i=1;i<global.pl_count+1;i++) {
        if global.item[num,5] = -1 or global.item[num,5] = i {
            if global.s_baseoff[i]+global.item[num,6] > global.s_off[i]
            or global.s_basedef[i]+global.item[num,7] > global.s_def[i] 
            or global.s_baseguts[i]+global.item[num,8] > global.s_guts[i] 
            or global.s_basespeed[i]+global.item[num,9] > global.s_speed[i] 
            or global.s_baseiq[i]+global.item[num,20] > global.s_iq[i] 
            {
                with global.healthbar[i] { alarm[2] = room_speed/6 }
            }
        } else {
            with global.healthbar[i] { image_blend = c_gray; alarm[2] = 0 }
        }
    }
}

