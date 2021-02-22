if instance_exists(objTextBox) {
    alarm[0] = 1
} else {
    global.thex = _x
    global.they = _y
    global.theroom = _room
    global.thedir = objPlayer.direction
    with objPlayer { canmove = 0; speed = 0 }
    instance_create(0,0,objFadeOut)
    instance_destroy()
}

