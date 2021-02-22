var a = instance_create(0,0,objTextBox);
for (var i=0;i<=10;i++) {
    if msg[i] != "" { a.str[i] = msg[i] }
    if name[i] != "" { a.name[i] = name[i] }
}

if flag_set != -1 {
    set_flag(flag_set,flag_set_state)
}

if sound != 0 { audio_play_sound(sound,10,0) }
if destroy { ide(); exit; }

