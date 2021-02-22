if instance_number(objTextBox) > 1 { instance_destroy(); exit;}

display_string = "";
position = 0;
display_position= 0;
//width_counter = 0;
last_space = 0;
text_speed = 1;
message_display = 0;
over = false;
over_sound = 0;
strno = 0;
stop = 0;
draw_top = 0;
can_type = 1;
portrait = 0;
if instance_exists(parCamera) { 
    if (parCamera.y > room_height - 88) {
        draw_top = 1;
    }
}

if instance_exists(objPlayer) { 
    if (objPlayer.y > room_height - 88) {
        draw_top = 1;
    }
}

cursor_image_index = 0
cursor_timer = 0

for (var i=0;i<11;i++) {
    name[i] = "";
}

if instance_exists(objPlayer) {
    objPlayer.canmove = 0;
}

alarm[1] = 10;
alarm[2] = 1;


