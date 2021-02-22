draw_set_alpha(0.5)
draw_sprite_stretched_ext(sprBlackDot,-1,0,0,426,240,c_white,0.5)
draw_set_alpha(1)
if type < 3 or backfire{
    draw_self()
} else {
    draw_sprite(sprite_index,image_index,x-426,y)
    draw_sprite(sprite_index,image_index,x,y)
    draw_sprite(sprite_index,image_index,x+426,y)
}

