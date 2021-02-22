if line2x >= 425 and line2y >= 239 {
    alarm[4] = 20
} else {
    if !draw_line2 { audio_play_sound(sndSlash,0,0) }
    draw_line2 = 1
    line2x += 426/20
    line2y += 240/20
    alarm[3] = 1
}

