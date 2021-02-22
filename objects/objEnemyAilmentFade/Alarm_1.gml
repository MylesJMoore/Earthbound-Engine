if image_alpha > 0 {
    image_alpha -=0.1
    alarm[1]=2
} else {
    instance_destroy()
}

