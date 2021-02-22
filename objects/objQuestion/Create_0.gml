choices = 0
choice[0] = ""
choice[1] = ""
choice[2] = ""
choice[3] = ""
choice[4] = ""
object = noone
answer = 0
ok = 0
_y[5] = 0

draw_top = 0;
if instance_exists(parCamera){
    if (parCamera.y > room_height - 88) {
        draw_top = 1;
    }
}
cursor_image_index = 0
cursor_timer = 0
cursor_y = _y[1]

