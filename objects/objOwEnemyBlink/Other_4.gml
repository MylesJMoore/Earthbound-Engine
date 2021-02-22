if room = global.theroom {
    alarm[0] = 5
    dying = 1;
    alarm[1] = 100
}

if room != global.theroom {
    visible = 0
} else {
    visible = 1
}

