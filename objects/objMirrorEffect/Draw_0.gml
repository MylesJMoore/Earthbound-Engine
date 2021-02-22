draw_set_alpha(1)
if instance_exists(objPlayer) { 
    draw_sprite(sprShadow,0,objPlayer.x,112-point_distance(objPlayer.x,112,objPlayer.x,objPlayer.y))
    draw_sprite(sprite_index,objPlayer.image_index,objPlayer.x,112-point_distance(objPlayer.x,112,objPlayer.x,objPlayer.y)) 
}

