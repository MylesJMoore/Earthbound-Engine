if alpha >= 0 {
    alpha -= fadespd
    alarm[1] = 1
} else {
    instance_destroy()
}

