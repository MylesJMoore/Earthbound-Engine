/// @description Checkout mode
if instance_exists(objStorage) { alarm[10] = 1 } else {
    //global.cutscene = 0
    var a = instance_create(0,0,objTextBox);
    a.name[0] = "Girl"
    a.name[1] = "Girl"
    a.strno = 1
    switch item {
        case -1:
            a.str[0] = "@ It looks like you're carrying too much stuff."
            break;
        case 0:
            a.str[0] = "@ All done then."
            break;
        default:
            a.str[0] = "@ The "+lower(global.item[item,1])+"? All done."
            break;
    }
    a.str[1] = "@ Do you want anything else?"
    question(3,"Store","Check out","Nothing","","")
    alarm[0] = 1
}

