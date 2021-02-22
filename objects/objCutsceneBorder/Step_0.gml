if image_alpha < 1 and !state {
    image_alpha += 0.025
}

if image_alpha > -1 and state {
    image_alpha -= 0.025
}

if image_alpha <= 0 {
    instance_destroy()
}

