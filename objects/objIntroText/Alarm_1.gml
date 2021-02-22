if alpha > 0 {
    alpha -= 0.02
    alarm[1] = 1
} else {
    instance_destroy()
}

