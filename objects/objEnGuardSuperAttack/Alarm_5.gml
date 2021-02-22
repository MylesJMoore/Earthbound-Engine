if alpha <= 0 {
    alarm[6] = 1   
    draw_flash = 0
} else {
    alpha -= 1/100
    alarm[5] = 1
}

