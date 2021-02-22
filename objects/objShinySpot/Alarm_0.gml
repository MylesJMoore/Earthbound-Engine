if instance_exists(objTextBox) { 
    alarm[0] = 1 
} else { 
    ini_save_data(x,y+12) 
    instance_create(x,y,objShinySpotFlyAway)
    instance_destroy()    
}

