/// @description Kill the enemies

if instance_exists(objBattleMsg) or instance_exists(parLastAction) {
    alarm[1] = 1
} else {
    if global.enemy[e] != 0 {
        if global.enemy[e].e_hp <= 0 {
            if global.enemy[e].e_last = 0 {
                audio_play_sound(sndedie,0,0)
                var a = instance_create(0,0,objBattleMsg);
                a.strno = 0;
                a.str[0] = global.enemy[e].e_fin
                
                with global.enemy[e] {
                    alarm[0] = 1
                }
                global.enemy[e] = 0
                e++;
                if e > global.en_count {
                    alarm[4] = 1;
                } else {
                    alarm[1] = 1;
                }
            } else {
                //Last action. Burst into flames, explode, etc
                global.enemy[e].e_last = 0 //Gets reset so it can actually die this time.
                enmy = e
                with global.enemy[e] { alarm[1] = 2; event_perform(ev_other,ev_user15); } 
                alarm[1] = 1;
            }
        } else {
            e++
            if e > global.en_count {
                alarm[4] = 1;
            } else {
                alarm[1] = 1;
            }
        }
    } else {
        write_line("enemy up2")
        e++;
        if e > global.en_count {
            alarm[4] = 1;
        } else {
            alarm[1] = 1;
        }
    }
}


