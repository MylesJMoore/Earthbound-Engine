/// @description  Move arm to starting position
if arm_angle < arm_angle_start {
    arm_angle += 0.5
    alarm[2] = 1
} else {
    audio_position = 0
    restarting = 0
    pause = 0
}

