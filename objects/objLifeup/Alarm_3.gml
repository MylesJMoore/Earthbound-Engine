if instance_exists(objBattleMsg) {
    alarm[3] = 1
} else {
    if type < 3 {
        var a = instance_create(0,0,objBattleMsg);
        a.strno = 0
        random_choser_extra2()
        switch type {
            case 0:
                lifeup = lifeup_effect(0);
                break;
            case 1:
                lifeup = lifeup_effect(1);
                break;
            case 2:
                lifeup = lifeup_effect(2);
                break;
        }
        
        global.enemy[tgt].e_hp += lifeup

        a.str[0] = upper(global.enemy[tgt].e_art) + global.enemy[tgt].e_name +" recovered#   "+string(lifeup)+" HP!"
        audio_play_sound(sndheal1,0,0)
        alarm[11] = 1
    } else {
        if rounds > global.en_count {
            alarm[11] = 1
            exit
        } else {
            if global.enemy[rounds] = 0 {
                alarm[3] = 1
                rounds++
                exit
            }
            var a = instance_create(0,0,objBattleMsg);
            a.strno = 0
            
            lifeup = lifeup_effect(3);
            
            global.enemy[rounds].e_hp += lifeup

            a.str[0] = upper(global.enemy[rounds].e_art) + global.enemy[rounds].e_name +" recovered#   "+string(lifeup)+" HP!" 
            audio_play_sound(sndheal1,0,0)
            rounds++
            alarm[3] = 1
        }
    }
}

