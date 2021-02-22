with instance_create(0,0,objTextBox) {
    name[0] = ""
    name[1] = ""
    name[2] = ""
    name[3] = ""
    name[4] = ""

    switch global.prologue {
        case 1:
            strno = 1
            str[0] = "@ What year is it?"
            str[1] = "@ I forgot how long it's been since then."
            break;
        case 2:
            strno = 2
            str[0] = "@ <With eight thousand cries,#@ The lil' cuckoo's bloodred tongue's{ like a flame singing.>"
            str[1] = "@ The saying has it that the little bird keeps singing#   even as it coughs up blood."
            str[2] = "@ The best friend I had kept singing as well."
            break;
        case 3:
            strno = 0
            str[0] = "@ She kept singing,{ even as blood spilled from her mouth."
            break;
        case 4:
            strno = 0
            str[0] = "@ The best friend I had kept singing on the battlefield."
            break;
    }
}

alarm[1] = 1

