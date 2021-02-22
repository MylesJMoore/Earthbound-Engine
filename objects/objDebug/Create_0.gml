//DEBUG

if instance_number(objDebug) > 1 { ide(); exit; }

a = font_add_sprite(sprMenuFont2,ord(" "),true,0)
draw_stats = 0
show_collisions = 0
active = 0
room_no = 40
lvl_no = 10
menu_no = 0
no_clip = 0
hibiki_must_die = 0
current_flag = 0
room_prev = 0
p = 1
dx = 0
dy = 0

///Console
for(var i=0;i<9;i++) {
    buffer[i] = ""
}
cursor_pos = 0
kb_string = ""
cursor_char = "@"
cursor_blink = 20
can_input = 1
room_input = 0
alarm[0] = cursor_blink
write_line("Metro Stardust Development Console v1.0")
write_line("Type help for a list of commands.")

