
pl = 1
hp_actual = global.s_hp[pl];
pp_actual = global.s_pp[pl];

dead = 0
paused = 0
image_speed = 1/4
image_index = 0

overlay = sprNull
overlay_image_index = 0
overlay_image_speed = 0
overlay2 = sprNull
overlay2_image_index = 0
overlay2_image_speed = 0

if room != rmBattle {
    depth = -10000000
}

alarm[0] = 8
alarm[1] = 1
alarm[3] = 1

