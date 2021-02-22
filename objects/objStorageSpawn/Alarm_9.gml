/// @description Store mode
if instance_exists(obj_inv) { alarm[9] = 1 } else {
    //global.cutscene = 0
    var a = instance_create(0,0,objTextBox);
    a.strno = 1
    if item != 0 {
        a.str[0] = "@ The "+global.item[item,1]+"?#@ I'll take good care of it!"
    } else {
        a.str[0] = "@ All done then."
    }
    a.str[1] = "@ Do you want anything else?"
    question(3,"Store something for me","I'd like to retrieve an item","I don't want anything","","")
    alarm[0] = 1
}

