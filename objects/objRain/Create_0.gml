
/*GAMECAVE EFFECTS ENGINE 3.X
Read the GCE3X documentation before using this code!

Object Name - objRain3
Engine - Rain Engine (type 3)
Purpose - The master object for rain; sets paramaters and handles the particles.

Explanation - The final rain engine provides you with lightning and side-view (platformer) rain effects.
The rain uses particles, where as the lightning is split into 2 parts; sheet lightning and fork lightning.
The sheet lightning simply fades in and out; drawing a large white rectangle across the screen. Where as
the fork lightning randomly generates it's own fork-lightning shape, and flashes across the screen. This
rain engine is very similiar to the first rain engine, which uses pixels instead of lines for the rain drops.
*/

if instance_number(objRain)>1 or instance_exists(objSnow){ instance_destroy() }

//Rain Particles
rain3 = part_system_create() //Create the main rain system.
part_system_depth(rain3,-9999999) //Set its depth

raindrop = part_type_create() //Create a raindrop particle
part_type_shape(raindrop,pt_shape_line)
part_type_orientation(raindrop,0,0,0,0,1);
part_type_size(raindrop,0.1,0.2,0,0)
part_type_scale(raindrop,3,1)
part_type_speed(raindrop,7,15,0.05,0)
part_type_direction(raindrop,250,240,0,0)
part_type_alpha2(raindrop,0.8,0)
part_type_life(raindrop,50,100)
part_type_blend(raindrop,true)
part_type_color2(raindrop,c_white,c_navy)

rain_emitter = part_emitter_create(rain3)
part_emitter_region(rain3,rain_emitter,__view_get( e__VW.XView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+200,-10,-5,ps_shape_ellipse,ps_distr_linear)
part_emitter_stream(rain3,rain_emitter,raindrop,3) //Start continually streaming rain particles.

repeat(100) {part_system_update(rain3);} //"Fast forward" the rains movement so it's already falling steadily when first shown.

alpha=0
alarm[0]=1
/*instance_activate_object(objRainDarkness)
if !instance_exists(objRainDarkness)
{
    instance_create(view_xview[0]-100,view_yview[0]-100,objRainDarkness)
}

/* */
/*  */
