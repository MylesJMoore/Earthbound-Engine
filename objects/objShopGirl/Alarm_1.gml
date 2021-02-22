/// @description Buy mode
if instance_exists(objTextBox) { alarm[1] = 1 } else {
    objPlayer.canmove = 0
    show_shop(0)
    alarm[2] = 1
}

