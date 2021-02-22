/// @description Store mode
if instance_exists(obj_inv) { alarm[9] = 1 } else {
    //global.cutscene = 0
    var a = instance_create(0,0,objTextBox);
    a.name[0] = "Girl"
    a.name[1] = "Girl"
    a.strno = 1
    if item != 0 {
        a.str[0] = "@ The "+lower(global.item[item,1])+"?#@ I'll take good care of it."
    } else {
        a.str[0] = "@ All done then."
    }
    a.str[1] = "@ Do you want anything else?"
    question(3,"Store","Check out","Nothing","","")
    alarm[0] = 1
}

