/// @description Check whether to trigger invincibility
if ie(objOwEnemyBlink) and !invincible {
    invincible = 1
    alarm[3] = 120 // 2 seconds
    alarm[4] = 10
}

///Make allies that follow you around
for(var c = 0;c <= 5*14;c++){
    prevx[c] = x
    prevy[c] = y
    prevd[c] = direction
}

if room != rmGameOver {
    if(!instance_exists(objPartyCharacter)){
        for(c = 1;c < global.pl_count;c += 1){
            var partyCharacter = instance_create(x,y,objPartyCharacter);
            partyCharacter.player_index = c
            with(partyCharacter){
                x = objPlayer.prevx[0]; y = objPlayer.prevy[0];
                switch player_index {
                    default:
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
                        break;
                }
            }
        }
    }
}

