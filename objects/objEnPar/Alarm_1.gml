blink++
visible = !visible
if blink < 4 {
    alarm[1] = 2
} else { 
    blink = 0
    visible = 1
}

