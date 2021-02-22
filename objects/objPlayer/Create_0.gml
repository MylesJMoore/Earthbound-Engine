if instance_number(objPlayer) > 1 { instance_destroy(); exit }

dir = 270;
direction = dir

walk_speed = 2;
water_speed = 1;
run_speed = walk_speed;
canmove = 1;
running = 0;
water = 0;
ladder = 0;
can_splash = true;
stairs_ang = 0;
invincible = 0;
invertedcontrols = 0;
shadow = 1
player = 1
dx = 0
dy = 0
key_direction = 270;

for(var c = 0;c <= 5*100;c++){
    prevx[c] = x
    prevy[c] = y
    prevd[c] = direction
}


//Sprites
//Alive
spr_walking[0,0] =    sprProtag_f_r
spr_walking[45,0] =   sprProtag_f_ur
spr_walking[90,0] =   sprProtag_f_u
spr_walking[135,0] =  sprProtag_f_ul
spr_walking[180,0] =  sprProtag_f_l
spr_walking[225,0] =  sprProtag_f_dl
spr_walking[270,0] =  sprProtag_f_d
spr_walking[315,0] =  sprProtag_f_dr
//Dead
spr_walking[0,1] =    sprProtag_f_r_d
spr_walking[45,1] =   sprProtag_f_ur_d
spr_walking[90,1] =   sprProtag_f_u_d
spr_walking[135,1] =  sprProtag_f_ul_d
spr_walking[180,1] =  sprProtag_f_l_d
spr_walking[225,1] =  sprProtag_f_dl_d
spr_walking[270,1] =  sprProtag_f_d_d
spr_walking[315,1] =  sprProtag_f_dr_d
//Climbing
spr_climbing[0] =   sprProtag_f_c

