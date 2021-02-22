/// @description  handle debug
if !global.debug { exit }


active = !active
keyboard_string = ""
if instance_exists(objPlayer) { 
    if can_input {
        objPlayer.canmove = !active 
    } else {
        objPlayer.canmove = 1
    }
}

