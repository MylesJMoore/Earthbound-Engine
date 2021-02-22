if instance_exists(objQuestion) { alarm[0] = 1 }
else {
    var a = instance_create(0,0,objTextBox);
        switch answer {
            case 0:
                a.name[0] = "Girl"
                a.strno = 0
                a.str[0] = "@ What do you want me to store?"
                alarm[1] = 1
                break;
            case 1:
                a.name[0] = "Girl"
                if !ds_list_empty(global.storage) {
                    a.strno = 0
                    a.str[0] = "@ What do you want to take?"
                    alarm[2] = 1
                } else {
                    a.name[1] = "Girl"
                    a.strno = 1
                    a.str[0] = "@ I'd like to help you, but it seems your storage is empty."
                    a.str[1] = "@ Do you want anything else?"
                    question(3,"Store","Check out","Nothing","","")
                    alarm[0] = 1
                }
                break;
            case 2:
                a.name[0] = "Girl"
                a.strno = 0
                a.str[0] = "@ Have fun."
                break;
                
        } 
}

