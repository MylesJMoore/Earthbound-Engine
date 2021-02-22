action_inherited();
if !chasing { speed = 0 }
//This one has different sprites for all 8 directions. 
//Uncomment this and add your own sprites to see it in action.
/*if speed > 0 {
    if (direction >= 0 and direction < 45/2) or (direction >= 315+45/2 and direction < 360) {
        sprite_index = sprFilth_ow4
        image_xscale = 1
    } else if (direction >= 45/2 and direction < 45+45/2) {
        sprite_index = sprFilth_ow3
        image_xscale = 1
    } else if (direction >= 45+45/2 and direction < 90+45/2) {
        sprite_index = sprFilth_ow3
        image_xscale = 1
    } else if (direction >= 90+45/2 and direction < 135+45/2) {
        sprite_index = sprFilth_ow3
        image_xscale = 1
    } else if (direction >= 135+45/2 and direction < 180+45/2) {
        sprite_index = sprFilth_ow4
        image_xscale = -1
    } else if (direction >= 180+45/2 and direction < 225+45/2) {
        sprite_index = sprFilth_ow2
        image_xscale = 1
    } else if (direction >= 225+45/2 and direction < 270+45/2) {
        sprite_index = sprFilth_ow2
        image_xscale = 1
    } else if (direction >= 270+45/2 and direction < 315+45/2) {
        sprite_index = sprFilth_ow2
        image_xscale = 1
    }
} else {
    sprite_index = sprFilth_ow
}

image_speed = speed/10

/* */
/*  */
