/// @description Spin record and move arm
if audio_is_playing(now_playing) {
    if !pause {
        arm_angle -= (arm_angle_start - arm_angle_final) / audio_length
        record_angle -= 1    
        alarm[1] = 1
    }
} else {
    pause = 1
    restarting = 1
    alarm[2] = 1
}

