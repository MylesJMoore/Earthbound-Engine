/// @description Sell mode
if instance_exists(objTextBox) { alarm[4] = 1 } else {
    objPlayer.canmove = 0
    var a = instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_inv);
    a.object = object_index
    a.shop_mode = 1
    alarm[5] = 1
}

