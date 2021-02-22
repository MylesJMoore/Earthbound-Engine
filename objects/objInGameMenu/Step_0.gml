if ok {
    if keyboard_check_pressed(vk_down) {
        audio_play_sound(sndselect2,0,0)
        if cursor_y = y1 { cursor_y = y2 }
        else if cursor_y = y2 { cursor_y = y3 }
        else if cursor_y = y3 { cursor_y = y4 }
        else if cursor_y = y4 { cursor_y = y5 }
        else if cursor_y = y5 { cursor_y = y1 }
        //else if cursor_y = y5 { cursor_y = iff(can_use_log,y6,y1) }
        //else if cursor_y = y6 { cursor_y = y1 }
    } else if keyboard_check_pressed(vk_up) {
        audio_play_sound(sndselect2,0,0)
        if cursor_y = y1 { cursor_y = y5 } //if cursor_y = y1 { cursor_y = iff(can_use_log,y6,y5) }
        else if cursor_y = y2 { cursor_y = y1 }
        else if cursor_y = y3 { cursor_y = y2 }
        else if cursor_y = y4 { cursor_y = y3 }
        else if cursor_y = y5 { cursor_y = y4 }
        else if cursor_y = y6 { cursor_y = y5 }
    }
    
    if keyboard_check_pressed(global.kb_back) or keyboard_check_pressed(global.kb_enter) {
        keyboard_clear(global.kb_back)
        keyboard_clear(global.kb_enter)
        with objAilmentsBubble instance_destroy()
        with objHealthBar instance_destroy()
        with objPause instance_destroy()
        audio_play_sound(sndback,0,0)
        instance_destroy()
    }

    if keyboard_check_pressed(global.kb_choose) {
        keyboard_clear(global.kb_choose)
        if cursor_y = y1 {
            audio_play_sound(sndchoose,0,0)
            ok = 0
            objHealthBar.visible = 0
            objAilmentsBubble.visible = 0
            instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_inv)
            exit 
        } else if cursor_y = y2 {
            audio_play_sound(sndchoose,0,0)
            ok = 0
            objHealthBar.visible = 0
            objAilmentsBubble.visible = 0
            instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objEqp)
            exit 
        } else if cursor_y = y3 {
            audio_play_sound(sndchoose,0,0)
            ok = 0
            instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objSkillsMenuOw)
            exit 
        } else if cursor_y = y4 {
            audio_play_sound(sndchoose,0,0)
            ok = 0
            instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objStatsMenu)
            exit 
        /*} else if (can_use_log && cursor_y = y5) {
            audio_play_sound(sndchoose,0,0)
            instance_create(view_xview,view_yview,objLogMenu)
            ok = 0
            exit
        } else if (!can_use_log && cursor_y = y5) || (can_use_log && cursor_y = y6) {*/
        } else if cursor_y = y5 {
            audio_play_sound(sndchoose,0,0)
            audio_stop_all()
            global.theroom = rmInit
            instance_create(0,0,objFadeOut)  
            ok = 0
            exit
        }
    }
}

/* */
cursor_timer +=0.25

if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}

/* */
/*  */
