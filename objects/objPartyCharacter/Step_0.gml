depth = -y

water = position_meeting(x,y,objWater)

if position_meeting(x,y,objStairs) {
    stairs_ang = -45
} else if position_meeting(x,y,objStairs2) {
    stairs_ang = 45
} else {
    stairs_ang = 0
}

if (direction >= 0 and direction < 45/2) or (direction >= 315+45/2 and direction < 360) {
    dir = 0-stairs_ang
} else if (direction >= 45/2 and direction < 45+45/2) {
    dir = 45-stairs_ang
} else if (direction >= 45+45/2 and direction < 90+45/2) {
    dir = 90-stairs_ang
} else if (direction >= 90+45/2 and direction < 135+45/2) {
    dir = 135-stairs_ang
} else if (direction >= 135+45/2 and direction < 180+45/2) {
    dir = 180-stairs_ang
} else if (direction >= 180+45/2 and direction < 225+45/2) {
    dir = 225-stairs_ang
} else if (direction >= 225+45/2 and direction < 270+45/2) {
    dir = 270-stairs_ang
} else if (direction >= 270+45/2 and direction < 315+45/2) {
    dir = 315-stairs_ang
}

if dir < 0 {
    dir = 360+dir
} else if dir = 360 {
    dir = 0
}

if !position_meeting(x,y,objLadder) {
    sprite_index = spr_walking[dir,global.dead[player_index+1]]
} else {
    sprite_index = spr_climbing[0]
}

if instance_exists(objPlayer) {
    if objPlayer.speed = 0 {
        image_index = 0
        image_speed = 0
    } else {
        switch player_index {
            case 1:
                image_speed = 0.15/(2*global.s_numb[2]+1)
                break;
            case 2:
                image_speed = 0.15/(2*global.s_numb[3]+1)
                break;
            case 3:
                image_speed = 0.15/(2*global.s_numb[4]+1)
                break;
        }
    }
}

