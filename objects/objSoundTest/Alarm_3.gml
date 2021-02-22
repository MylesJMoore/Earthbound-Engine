/*/Move arm to correct position in case of desync
if audio_is_playing(now_playing) and !restarting {
    var angle_mod = ((arm_angle_start - arm_angle_final) / audio_length) ;
    arm_angle -= angle_mod
    write_line("Audio length: "+string(audio_length)+" Audio position: "+string(audio_position)+" Arm angle mod: "+string(angle_mod))
    alarm[3] = 60
} 

/* */
/*  */
