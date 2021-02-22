/// @description A good night's rest 2
if instance_exists(objGoodNight) { alarm[10] = 1 } else {
    var a = instance_create(0,0,objBigBox);
    a.name[0] = "Girl"
    a.strno = 0
    a.str[0] = "@ See you soon."
}

