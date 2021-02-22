if alpha >= 1 {
    alarm[5] = 1    
    draw_line1 = 0
    draw_line2 = 0
    with global.enemy[enmy] {
        speed = 0
        y = objEnVenusGuardSuperAttack.yy
    }
} else {
    
    if !draw_flash { audio_play_sound(sndSlashFinisher,0,0) }
    draw_flash = 1
    alpha += 1/20
    alarm[4] = 1
}

