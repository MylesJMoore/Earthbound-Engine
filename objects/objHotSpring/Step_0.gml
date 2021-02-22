if place_meeting(x,y,objPlayer) {
    if active = 0 { active = 1; timer = 0 }
    if timer < 5*room_speed {
        /*if !instance_exists(objButterflyGet) and !instance_exists(objTextBox) 
        and !instance_exists(objPause) and !instance_exists(obj_inv) 
        and !instance_exists(objStorage) and !instance_exists(objGoodNight) and !instance_exists(objMapDisplay)
        and !instance_exists(objQuestion) and !instance_exists(objLogMenu) and*/
        
        if !ie(parDeactivator) and !global.cutscene {
            timer++
        }
    } else if done = 0 {
        done = 1
        audio_play_sound(sndheal2,0,0)
        var a = instance_create(0,0,objTextBox);
        a.strno = 0
        if global.pl_count < 2 {
            a.str[0] = "@ Relaxing in the hot spring made " + global.s_name[1] + " feel alive again."
        } else {
            a.str[0] = "@ Relaxing in the hot spring made " + global.s_name[1] + "'s party feel alive again."
        }
        objPlayer.speed = 0
        for (var i=1;i<global.pl_count+1;i++){
            global.s_poison[i] = 0;
            global.s_infected[i] = 0;
            global.s_numb[i] = 0;
            global.s_strange[i] = 0;
            global.s_hp[i] = global.s_hpmax[i]
            global.s_pp[i] = global.s_ppmax[i]
            global.dead[i] = 0;
        }
    }
} else {
    active = 0
    done = 0
    if timer > 0 { timer-- }
}

/* */
/*  */
