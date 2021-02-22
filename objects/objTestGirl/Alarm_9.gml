/// @description A good night's rest 1
if instance_exists(objTextBox) { alarm[9] = 1 } else {
    objPlayer.canmove = 0
    instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),objGoodNight);
    alarm[10] = 1
}

