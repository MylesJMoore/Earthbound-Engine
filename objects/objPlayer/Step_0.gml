/// @description Movement
depth = -y

// Handle keyboard input
dx = 0
dy = 0

if !global.s_strange[1] {
    dx = (keyboard_check(vk_right) xor round(joy_axis(objPersistent.device,0)) == 1) - (keyboard_check(vk_left) xor round(joy_axis(objPersistent.device,0)) == -1);
    dy = (keyboard_check(vk_down) xor round(joy_axis(objPersistent.device,1)) == 1) - (keyboard_check(vk_up) xor round(joy_axis(objPersistent.device,1)) == -1);
} else {
    switch invertedcontrols {
        case 0:
            dx = -(keyboard_check(vk_right) or round(joy_axis(objPersistent.device,0)) == 1) + (keyboard_check(vk_left) or round(joy_axis(objPersistent.device,0)) == -1);
            dy = -(keyboard_check(vk_down) or round(joy_axis(objPersistent.device,1)) == 1) + (keyboard_check(vk_up) or round(joy_axis(objPersistent.device,1)) == -1);
            break;
        case 1:
            dx = (keyboard_check(vk_right) or round(joy_axis(objPersistent.device,0)) == 1) - (keyboard_check(vk_left) or round(joy_axis(objPersistent.device,0)) == -1);
            dy = (keyboard_check(vk_down) or round(joy_axis(objPersistent.device,1)) == 1) - (keyboard_check(vk_up) or round(joy_axis(objPersistent.device,1)) == -1);
            break;
        case 2:
            dx = (keyboard_check(vk_down) or round(joy_axis(objPersistent.device,1)) == 1) - (keyboard_check(vk_up) or round(joy_axis(objPersistent.device,1)) == -1);
            dy = (keyboard_check(vk_right) or round(joy_axis(objPersistent.device,0)) == 1) - (keyboard_check(vk_left) or round(joy_axis(objPersistent.device,0)) == -1);
            break;
        case 3:
            dx = -(keyboard_check(vk_down) or round(joy_axis(objPersistent.device,1)) == 1) + (keyboard_check(vk_up) or round(joy_axis(objPersistent.device,1)) == -1);
            dy = -(keyboard_check(vk_right) or round(joy_axis(objPersistent.device,0)) == 1) + (keyboard_check(vk_left) or round(joy_axis(objPersistent.device,0)) == -1);
            break;
    }
}

if global.debug {
    objDebug.dx = dx
    objDebug.dy = dy
}

water = position_meeting(x,y,objWater)
ladder = position_meeting(x,y,objLadder)

if canmove = 1 {
    //if (dx > 0.5 or dx < -0.5) || (dy > 0.5 or dy < -0.5) {
    if (abs(dx) > 0.5) || (abs(dy) > 0.5) {
        // Walk
            key_direction = point_direction(0, 0, dx, dy);
            speed = (walk_speed-0.5*(water||ladder)-0.75*(global.s_numb[1] or global.s_numb[2] or global.s_numb[3] or global.s_numb[4]))
            
            if speed > 0 {
                if position_meeting(x,y,objStairs){
                    stairs_ang = -45*(abs(dx) > 0 and abs(dy) < 0.5 )
                } else if position_meeting(x,y,objStairs2) {
                    stairs_ang = 45*(abs(dx) > 0 and abs(dy) < 0.5 )
                } else {
                    stairs_ang = 0
                }
            } else {
                stairs_ang = 0
            }
            
            direction = key_direction+stairs_ang
            
            if water {
                if can_splash {
                    audio_play_sound(sndsplash,0,0)
                    alarm[2] = 30
                    can_splash = false
                }
            }
    } else {
        // Idle
        speed = 0
        image_index = 0
    }
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

if !ladder {
    sprite_index = spr_walking[dir,global.dead[player]]
} else {
    sprite_index = spr_climbing[0]
}



/// Interaction with objects

audio_listener_position(x, y, 0);

if keyboard_check_pressed(global.kb_choose) and canmove and !instance_exists(obj_inv) and !instance_exists(objStorage)  {
    var npc, angle, box;
    if distance_to_object(objNPCExtender) < 12 {
        npc = instance_nearest(x,y,objNPCExtender).link
        angle = point_direction(x,y,npc.x,npc.y)
        if (angle < 360+(45/2)) and (angle > 360-(45/2)) 
        or (angle < 0+(45/2)) and (angle > 0-(45/2))  { direction = 0 }
        else if (angle < 45+(45/2)) and (angle > 45-(45/2)) { direction = 45  }
        else if (angle < 90+(45/2)) and (angle > 90-(45/2)) { direction = 90  }
        else if (angle < 135+(45/2)) and (angle > 135-(45/2)) { direction = 135  }
        else if (angle < 180+(45/2)) and (angle > 180-(45/2)) { direction = 180  }
        else if (angle < 225+(45/2)) and (angle > 225-(45/2)) { direction = 225  }
        else if (angle < 270+(45/2)) and (angle > 270-(45/2)) { direction = 270  }
        else if (angle < 315+(45/2)) and (angle > 315-(45/2)) { direction = 315  }
        speed = 0
        image_index = 0
        with npc { alarm[11] = 1 }
        exit
    }
    
    if distance_to_object(parDoor) < 8 {
        npc = instance_nearest(x,y,parDoor)
        if npc.visible { 
            angle = point_direction(x,y,npc.x,npc.y)
            if (angle < 360+(45/2)) and (angle > 360-(45/2)) 
            or (angle < 0+(45/2)) and (angle > 0-(45/2))  { direction = 0 ; with npc { direction = 180 } }
            else if (angle < 45+(45/2)) and (angle > 45-(45/2)) { direction = 45 ; with npc { direction = 225 } }
            else if (angle < 90+(45/2)) and (angle > 90-(45/2)) { direction = 90 ; with npc { direction = 270 } }
            else if (angle < 135+(45/2)) and (angle > 135-(45/2)) { direction = 135 ; with npc { direction = 315 } }
            else if (angle < 180+(45/2)) and (angle > 180-(45/2)) { direction = 180 ; with npc { direction = 0 } }
            else if (angle < 225+(45/2)) and (angle > 225-(45/2)) { direction = 225 ; with npc { direction = 45 } }
            else if (angle < 270+(45/2)) and (angle > 270-(45/2)) { direction = 270 ; with npc { direction = 90 } }
            else if (angle < 315+(45/2)) and (angle > 315-(45/2)) { direction = 315 ; with npc { direction = 135 } }  
        }
        with npc { alarm[11] = 1 } 
        speed = 0
        image_index = 0
        exit
    }
    
    
    if distance_to_object(parNpc) < 8 {
        npc = instance_nearest(x,y,parNpc)
        if npc.visible { 
            angle = point_direction(x,y,npc.x,npc.y)
            if (angle < 360+(45/2)) and (angle > 360-(45/2)) 
            or (angle < 0+(45/2)) and (angle > 0-(45/2))  { direction = 0 ; with npc { direction = 180 } }
            else if (angle < 45+(45/2)) and (angle > 45-(45/2)) { direction = 45 ; with npc { direction = 225 } }
            else if (angle < 90+(45/2)) and (angle > 90-(45/2)) { direction = 90 ; with npc { direction = 270 } }
            else if (angle < 135+(45/2)) and (angle > 135-(45/2)) { direction = 135 ; with npc { direction = 315 } }
            else if (angle < 180+(45/2)) and (angle > 180-(45/2)) { direction = 180 ; with npc { direction = 0 } }
            else if (angle < 225+(45/2)) and (angle > 225-(45/2)) { direction = 225 ; with npc { direction = 45 } }
            else if (angle < 270+(45/2)) and (angle > 270-(45/2)) { direction = 270 ; with npc { direction = 90 } }
            else if (angle < 315+(45/2)) and (angle > 315-(45/2)) { direction = 315 ; with npc { direction = 135 } }  
        }
        with npc { alarm[11] = 1 } 
        speed = 0
        image_index = 0
        exit
    }
}

///Prolong invincibility if menu exists

if ie(parDeactivator) and invincible {
    alarm[3]++;
}

