/// @description Deposit
if instance_exists(objTextBox) {
    alarm[3] = 1
} else {
    objPlayer.canmove = 0
    var atm;
    atm = instance_create(x,y,objATMDisplay) 
    atm.mode = 1
    atm.object = object_index
    atm.text = text;
    alarm[4] = 1
}

