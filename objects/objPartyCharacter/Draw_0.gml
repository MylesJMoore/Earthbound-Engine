if !water {
    draw_sprite(sprShadow,0,x,y)
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
} else {
    draw_sprite_part_ext(sprite_index,image_index,0,0,sprite_width,2*sprite_height/3,x-sprite_get_xoffset(sprite_index),y-floor(2*sprite_height/3),image_xscale,image_yscale,image_blend,image_alpha)
    draw_sprite(sprWaterRipple,image_index,x,y)
}

