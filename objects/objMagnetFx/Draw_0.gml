draw_set_alpha(0.5)
draw_sprite_stretched_ext(sprBlackDot,-1,0,0,426,240,c_white,0.5)
draw_set_alpha(1)
if !backfire and type = 1 {
    draw_sprite_tiled(sprite_index,image_index,0,0)
} else {
    draw_self()
}

