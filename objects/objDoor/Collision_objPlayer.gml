global.thex = _x
global.they = _y
global.theroom = _room
global.thedir = objPlayer.direction
with other { canmove = 0; speed = 0 }
var a =  instance_create(0,0,objFadeOut);
a.effect_leave = effect_leave;       
a.effect_enter = effect_enter;
a.fadespd = effect_speed;
instance_destroy()

