depth =-y

/*if instance_exists(objButterflyGet) or instance_exists(objTextBox) 
or instance_exists(objPause) or instance_exists(obj_inv) 
or instance_exists(objStorage) or instance_exists(objGoodNight) 
or instance_exists(objQuestion) or instance_exists(objShop)
or instance_exists(objATMDisplay) */

if ie(parDeactivator) or global.cutscene {
    speed = 0
    exit
}

if direction > 90 and direction < 270 { image_xscale = -1 }
else if direction < 90 and direction >= 0 { image_xscale = 1 }
else if direction <= 360 and direction > 270 { image_xscale = 1 }

/* */
/*  */
