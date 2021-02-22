if keyboard_check_pressed(global.kb_back) or keyboard_check_pressed(global.kb_map) and ok {
    audio_play_sound(sndback,0,0)
    objPlayer.canmove = 1
    instance_destroy()
}

//test
if ok {
    xyou += keyboard_check(vk_right)
    xyou -= keyboard_check(vk_left)
    
    yyou -= keyboard_check(vk_up)
    yyou += keyboard_check(vk_down)
}

