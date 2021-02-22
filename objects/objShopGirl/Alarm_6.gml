/// @description Sell mode
if instance_exists(objQuestion) { alarm[6] = 1 } else {
    var a = instance_create(0,0,objTextBox);
    a.name[0] = "Girl"
    a.name[1] = "Girl"
    a.strno = 1
    switch answer {
        case 0:
            del_item_inv(item2,global.current_inv)
            global.money += price;
            a.str[0] = "@ All done then.#@ Here are your $"+string(price)+", as promised."
            global.current_inv = 0
            break;
        case 1:
            a.strno = 0
            a.str[0] = "@ I see." 
            break;
    }
    a.str[1] = "@ Do you want anything else?"
    question(3,"Buy","Sell","Nothing","","")
    alarm[0] = 1
}

