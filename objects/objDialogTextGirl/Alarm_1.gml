if instance_exists(objQuestion) { alarm[1] = 1 }
else {
    var a = instance_create(0,0,objBigBox);
    a.name[0] = "Girl"
    a.strno = 0
    a.str[0] = "@ Done."
    switch answer {
        case 0:
            global.dead[2] = 1
            global.dead[3] = 1
            global.dead[4] = 1
            break;
        case 1:
            global.dead[2] = 0
            global.dead[3] = 1
            global.dead[4] = 1
            break;
        case 2:
            global.dead[2] = 0
            global.dead[3] = 0
            global.dead[4] = 1
            break;
        case 3:
            global.dead[2] = 0
            global.dead[3] = 0
            global.dead[4] = 0
            break;
    }
    global.pl_count = answer+1
}

