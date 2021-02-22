/// @description Checkout mode
if instance_exists(objTextBox) { alarm[2] = 1 } else {
    //global.cutscene = 1
    objPlayer.canmove = 0
    var a = instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objStorage);
    a.object = object_index
    alarm[10] = 1
}

