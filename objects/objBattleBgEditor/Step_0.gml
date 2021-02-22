    if keyboard_check_pressed(vk_down) {
        if cursor_y = _y[1] { cursor_y = _y[2] }
        else if cursor_y = _y[2] { cursor_y = _y[3] }
        else if cursor_y = _y[3] { cursor_y = _y[4] }
        else if cursor_y = _y[4] { cursor_y = _y[1] }
    } else if keyboard_check_pressed(vk_up) {
        if cursor_y = _y[1] { cursor_y = _y[4] }
        else if cursor_y = _y[2] { cursor_y = _y[1] }
        else if cursor_y = _y[3] { cursor_y = _y[2] }
        else if cursor_y = _y[4] { cursor_y = _y[3] }
    } else if keyboard_check_pressed(vk_right) {
        if cursor_x = _x[1] { cursor_x = _x[2] }
        else if cursor_x = _x[2] { cursor_x = _x[3] }
        else if cursor_x = _x[3] { cursor_x = _x[1] }
    } else if keyboard_check_pressed(vk_left){
        if cursor_x = _x[1] { cursor_x = _x[3] }
        else if cursor_x = _x[2]  { cursor_x = _x[1] }
        else if cursor_x = _x[3] { cursor_x = _x[2] }
    }
    
    
    
    if keyboard_check(vk_control) {
        if cursor_y = _y[1]{
            if cursor_x = _x[1] {
                ly[layer].frequency -= 0.1
            } else if cursor_x = _x[2] {
                ly[layer].amplitude -= 0.1
            } else {
                ly[layer].speedx -= 0.01
            }
        } else if cursor_y = _y[2]{
            if cursor_x = _x[1] {
                ly[layer].phaserate -= 0.1
            } else if cursor_x = _x[2] {
                ly[layer].alpha -= 0.01
            } else {
                ly[layer].speedy -= 0.01
            }
        }
    } else if keyboard_check(vk_alt) {
        if cursor_y = _y[1]{
            if cursor_x = _x[1] {
                ly[layer].frequency += 0.1
            } else if cursor_x = _x[2] {
                ly[layer].amplitude += 0.1
            } else {
                ly[layer].speedx += 0.01
            }
        } else if cursor_y = _y[2]{
            if cursor_x = _x[1] {
                ly[layer].phaserate += 0.1
            } else if cursor_x = _x[2] {
                ly[layer].alpha += 0.01
            } else {
                ly[layer].speedy += 0.01
            }
        }
    }
    
    if keyboard_check_pressed(vk_control) {
        if cursor_y = _y[3]{
            if cursor_x = _x[1] {
                if layer > 1 { layer-- }
            } else {
                if  ly[layer].bgg>0 {
                    if ly[layer].custom {
                        sprite_delete(ly[layer].back)
                        ly[layer].custom = 0
                    }
                    ly[layer].bgg--
                    ly[layer].back = global.battle_bg[ly[layer].bgg,0]
                }
            }
        } else if cursor_y = _y[4]{
            if cursor_x = _x[1] {
                if ly[layer].effect > 0 {
                    ly[layer].effect--
                }
            } else {
                //Something else could go here
            }
        }
    } else if keyboard_check_pressed(vk_alt) {
        if cursor_y = _y[3]{
            if cursor_x = _x[1] {
                if layer < 3 { layer++ }
            } else {
                //if ly[layer].bgg<=array_length_1d(global.battle_bg) {
                    if ly[layer].custom {
                        sprite_delete(ly[layer].back)
                        ly[layer].custom = 0
                    }
                    ly[layer].bgg++
                    ly[layer].back = global.battle_bg[ly[layer].bgg,0]
                //}
            }
        } else if cursor_y = _y[4]{
            if cursor_x = _x[1] {
                if ly[layer].effect < 3 {
                    ly[layer].effect++
                }
            } else {
                //Something else could go here
            }
        }
    }
    
    if keyboard_check_pressed(global.kb_enter) {
        ly[layer].amplitude = 0
        ly[layer].phaserate = 0
        ly[layer].frequency = 0
        ly[layer].alpha = 1
        ly[layer].speedx = 0
        ly[layer].speedy = 0
    }
    
    if keyboard_check_pressed(ord("C")) {
        clipboard_set_text(
            "AMP: "   + string(ly[layer].amplitude) +" / "+
            "PHASE: " + string(ly[layer].phaserate) +" / "+
            "FREQ: "  + string(ly[layer].frequency) +" / "+
            "ALPHA: " + string(ly[layer].alpha) +" / "+
            "SPDX: "  + string(ly[layer].speedx) +" / "+
            "SPDY: "  + string(ly[layer].speedy) +" / "+
            "FX: "    + string(ly[layer].effect) +" / "+
            "BG: "    + sprite_get_name(global.battle_bg[ly[layer].bgg,0])
        )
    }
    
    if keyboard_check_pressed(ord("L")) {
        if ly[layer].custom {
            sprite_delete(ly[layer].back)
        }
        ly[layer].back = sprite_add(get_open_filename("PNG File|*.png", ""),0,0,0,0,0)
        ly[layer].custom = 1
    }
    
    cursor_timer +=0.25
    
    if cursor_timer = 1
    {
    cursor_image_index +=1
    cursor_timer = 0
    }

