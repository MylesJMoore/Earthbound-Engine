/// @description Checkout mode
if instance_exists(objStorage) { alarm[10] = 1 } else {
    //global.cutscene = 0
    var a = instance_create(0,0,objTextBox);
    a.strno = 1
    switch item {
        case -1:
            a.str[0] = "@ It looks like you're carrying too much stuff."
            break;
        case 0:
            a.str[0] = "@ All done."
            break;
        default:
            a.str[0] = "@ The "+global.item[item,1]+"? All done."
            break;
    }
    a.str[1] = "@ Do you want anything else?"
    question(3,"Store something for me","I'd like to retrieve an item","I don't want anything","","")
    alarm[0] = 1
}

