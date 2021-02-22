
    if image_alpha < 1 {
        image_alpha += 0.0075
    } else {

        //with objRain instance_destroy()
        //with objRainDarkness instance_destroy()
        //with objSnow instance_destroy()
        
        global.boss = false
        
        stat_reset()
        //objPlayer.canmove = 1
        
        global.dead[1] = 0
        global.s_hp[1] = global.s_hpmax[1]
        global.s_pp[1] = global.s_ppmax[1]
        for (var i=1;i<global.pl_count+1;i++){
            global.s_pp[i] = 0
            global.s_poison[i] = 0
            global.s_numb[i] = 0
            global.s_strange[i] = 0
            global.s_infected[i] = 0
        }
        room_goto(rmGameOver)
    }

