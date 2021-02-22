cursor_timer +=0.25
if instance_exists(objPlayer) { objPlayer.canmove = 0 }
if cursor_timer = 1
{
cursor_image_index +=1
cursor_timer = 0
}

/*if global.debug {
choices += keyboard_check_pressed(vk_right)
choices -= keyboard_check_pressed(vk_left)

if keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left) {
    alarm[0] = 1
}
}

/* */
/*  */
