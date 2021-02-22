//depth = -(96-point_distance(objPlayer.x,96,objPlayer.x,objPlayer.y))+5000000
if (objPlayer.direction >= 0 and objPlayer.direction < 45/2) or (objPlayer.direction >= 315+45/2 and objPlayer.direction < 360) {
    sprite_index = objPlayer.spr_walking[0,0]; image_xscale = -1
} else if (objPlayer.direction >= 45/2 and objPlayer.direction < 45+45/2) {
    sprite_index = objPlayer.spr_walking[315,0]; image_xscale = 0
} else if (objPlayer.direction >= 45+45/2 and objPlayer.direction < 90+45/2) {
    sprite_index = objPlayer.spr_walking[270,0]; image_xscale = -1
} else if (objPlayer.direction >= 90+45/2 and objPlayer.direction < 135+45/2) {
    sprite_index = objPlayer.spr_walking[225,0]; image_xscale = 0
} else if (objPlayer.direction >= 135+45/2 and objPlayer.direction < 180+45/2) {
    sprite_index = objPlayer.spr_walking[180,0]; image_xscale = 0
} else if (objPlayer.direction >= 180+45/2 and objPlayer.direction < 225+45/2) {
    sprite_index = objPlayer.spr_walking[135,0]; image_xscale = 0
} else if (objPlayer.direction >= 225+45/2 and objPlayer.direction < 270+45/2) {
    sprite_index = objPlayer.spr_walking[90,0]; image_xscale = 0
} else if (objPlayer.direction >= 270+45/2 and objPlayer.direction < 315+45/2) {
    sprite_index = objPlayer.spr_walking[45,0]; image_xscale = 0
}

