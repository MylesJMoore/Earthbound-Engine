/// @description Buy mode
if instance_exists(objShop) { alarm[2] = 1 } else {
    var a = instance_create(0,0,objTextBox);
    a.name[0] = "Girl"
    a.name[1] = "Girl"
    if happy {
        a.strno = 0
        a.str[0] = "@ Do you want anything else?"
        question(3,"Buy","Sell","No","","")
        alarm[0] = 1
    } else {
        a.strno = 0
        a.str[0] = "@ Get outta here if you aren't gonna buy anything!"
    }
}

