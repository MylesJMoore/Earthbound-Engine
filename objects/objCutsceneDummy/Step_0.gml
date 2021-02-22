image_xscale = 1;

if (direction >= 0 and direction < 45/2) or (direction >= 315+45/2 and direction < 360) {
    dir = 0
} else if (direction >= 45/2 and direction < 45+45/2) {
    dir = 45
} else if (direction >= 45+45/2 and direction < 90+45/2) {
    dir = 90
} else if (direction >= 90+45/2 and direction < 135+45/2) {
    dir = 135
} else if (direction >= 135+45/2 and direction < 180+45/2) {
    if flip { image_xscale = -1 }
    dir = 180
} else if (direction >= 180+45/2 and direction < 225+45/2) {
    dir = 225
} else if (direction >= 225+45/2 and direction < 270+45/2) {
    dir = 270
} else if (direction >= 270+45/2 and direction < 315+45/2) {
    dir = 315
}
depth = -y

if !c_sprite { 
    if moving {
        if c_sprite_speed > 0 {
            image_speed = c_sprite_speed
        } else {
            image_speed = speed*0.1
        }
    } else {
        image_speed = 0
        image_index = 0
    }
    sprite_index = spr_walking[dir] 
} else { 
    sprite_index = c_sprite_index 
    image_speed = c_sprite_speed
}

