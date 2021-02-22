/// @description Withdraw
if instance_exists(objTextBox) {
    alarm[1] = 1
} else {
    objPlayer.canmove = 0
    var atm;
    atm = instance_create(x,y,objATMDisplay) 
    atm.mode = 0
    atm.object = object_index
    atm.text = text;
    alarm[2] = 1
}

