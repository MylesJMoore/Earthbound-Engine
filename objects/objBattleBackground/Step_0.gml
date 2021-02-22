//Increase wave variables to create illusion of animation
phaseoffset += phaserate;
tr_offsetx += speedx;
tr_offsety += speedy;

//Draw tiled sprite to the background surface
if !surface_exists(surf){ surf=surface_create(room_width*2,room_height*2); }



