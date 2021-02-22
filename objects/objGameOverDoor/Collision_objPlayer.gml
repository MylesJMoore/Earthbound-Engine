global.thex = _x
global.they = _y
global.theroom = _room
global.s_hp[1] = global.s_hpmax[1]
global.s_pp[1] = global.s_ppmax[1]
with other { canmove = 0; speed = 0 }
ini_load_data(1)
instance_create(0,0,objFadeOut)
instance_destroy()

