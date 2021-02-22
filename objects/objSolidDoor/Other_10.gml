if !closed {
    global.thex = _x
    global.they = _y
    global.theroom = _room
    global.thedir = objPlayer.direction
    with objPlayer { canmove = 0; speed = 0 }
    audio_play_sound(soundOpen,1,0)
    var a = instance_create(0,0,objFadeOut);
    a.sound = soundClose;
    instance_destroy()
} else {
    if !audio_is_playing(sndKnock) {
        audio_play_sound(sndKnock,10,0)
    }
}

