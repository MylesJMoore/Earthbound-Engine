if !position_meeting(x,y,objWater) {
    draw_self()
} else {
    draw_sprite_part_ext(sprite_index,image_index,0,0,sprite_width,2*sprite_height/3,x-sprite_get_xoffset(sprite_index),y-24,image_xscale,image_yscale,image_blend,image_alpha)
    draw_sprite_stretched(sprWaterRipple,image_index,x-17,y,32,16)
}



