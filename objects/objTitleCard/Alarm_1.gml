/*if instance_exists(objTextBox) {
    alarm[1] = 1
} else {
    switch global.prologue {
        case 1:
            global.theroom = rmPrologue2
            break;
        case 2:
            global.theroom = rmPrologue3
            break;
        case 3:
            global.theroom = rmPrologue4
            break;
        case 4:
            global.theroom = rmZweiWing1
            global.cutscene = 1
            break;
    }
    
    global.prologue++
    instance_create(0,0,objFadeOut)
}

/* */
/*  */
