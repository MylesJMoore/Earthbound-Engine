if counter >= 0 {
    counter -= fadespd
    if instance_exists(objPlayer) {
        objPlayer.canmove = false
    }
    alarm[1] = 1
} else {
    if sound != 0 {
        audio_play_sound(sound,1,0)
    }
    if instance_exists(objPlayer) {
        if !get_flag(28) {
            objPlayer.canmove = true
        }
    }
    instance_destroy()
}

