/// @description Sell mode
if instance_exists(obj_inv) { alarm[5] = 1 } else {
    var a = instance_create(0,0,objTextBox);
    a.name[0] = "Girl"
    a.name[1] = "Girl"
    a.strno = 1
    switch item {
        case 0:
            a.str[0] = "@ I swear I'll buy your stuff for a good price."
            a.str[1] = "@ Do you want anything else?"
            question(3,"Buy","Sell","Nothing","","")
            alarm[0] = 1
            break;
        default:
            if global.item[item,18] {
                a.str[0] = "@ The "+lower(global.item[item,1])+"?#@ I'll give you $"+string(price)+" for it."
                a.str[1] = "@ Is that okay?"
                question(2,"Yes","No","","","")
                alarm[6] = 1
            } else {
                a.str[0] = "@ I think you should keep that."
                a.str[1] = "@ Do you want anything else?"
                question(3,"Buy","Sell","Nothing","","")
                alarm[0] = 1
            }
            break;
    }
    
}

