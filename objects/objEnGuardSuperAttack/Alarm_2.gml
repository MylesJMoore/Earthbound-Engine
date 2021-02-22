if line1x <= 1 and line1y >= 239 {
    alarm[3] = 20
} else {
    if !draw_line1 { audio_play_sound(sndSlash,0,0) }
    draw_line1 =1
    line1x -= 426/20
    line1y += 240/20
    alarm[2] = 1
}

