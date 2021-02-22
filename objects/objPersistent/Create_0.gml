filter = 0
device  = joy_count()-1;
event_user(0);
pixel = shader_get_uniform(shPixel,"pixel");
pixelsize = 1

ini_open(global.config_fname)
scale = ini_read_real("Settings","scale",1);
ini_close()

window_resize_and_center(scale)

alarm[0] = 1

