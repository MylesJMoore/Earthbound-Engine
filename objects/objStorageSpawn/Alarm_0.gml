if instance_exists(objQuestion) { alarm[0] = 1 }
else {
    var a = instance_create(0,0,objTextBox);
        switch answer {
            case 0:
                a.strno = 0
                a.str[0] = "@ What do you want me to store?"
                alarm[1] = 1
                break;
            case 1:
                if !ds_list_empty(global.storage) {
                    a.strno = 0
                    a.str[0] = "@ What do you want to retrieve?"
                    alarm[2] = 1
                } else {
                    a.strno = 1
                    a.str[0] = "@ I'd like to help you, but it seems your storage is empty."
                    a.str[1] = "@ Do you want anything else?"
                    question(3,"Store something for me","I'd like to retrieve an item","I don't want anything","","")
                    alarm[0] = 1
                }
                break;
            case 2:
                a.strno = 0
                a.str[0] = "@ Thank you."
                break;
                
        } 
}

