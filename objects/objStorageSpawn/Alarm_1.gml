/// @description Store mode
if instance_exists(objTextBox) { alarm[1] = 1 } else {
    //global.cutscene = 1
    objPlayer.canmove = 0
    var a = instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_inv);
    a.object = object_index
    a.storage_mode = 1
    alarm[9] = 1
}

