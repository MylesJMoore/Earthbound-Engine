if instance_exists(objBattleMsg) {
    alarm[1] = 1
} else {
    global.nohproll = 1
    audio_play_sound(sndGuardJump,0,0) 
    yy = global.enemy[enmy].y
    with global.enemy[enmy] {
        direction = 90
        speed = 5
    }
    alarm[2] = 1*room_speed
}

