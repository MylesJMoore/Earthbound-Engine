/// @description Battle start messages
with instance_create(0,0,objBattleMsg) {
    strno = 0;
    switch global.battle_type {
        case 0:
            switch global.en_count {
                case 1: 
                    str[0] = global.enemy[1].e_welcome[1]; 
                    break;
                case 2: 
                    str[0] = global.enemy[1].e_welcome[2]; 
                    break;
                case 3:
                case 4:
                case 5:
                    str[0] = global.enemy[1].e_welcome[3]; 
                    break;
            }
            break;
        case 1:
            switch global.en_count {
                case 1:
                    str[0] = "You snuck up on "+global.enemy[1].e_art+global.enemy[1].e_name+" from behind!"
                    break;
                case 2: 
                    str[0] = "You snuck up on "+global.enemy[1].e_art+global.enemy[1].e_name+" and "+global.enemy[1].e_pron_pos+" cohort from behind!"
                    break;
                case 3: 
                case 4: 
                case 5: 
                    str[0] = "You snuck up on "+global.enemy[1].e_art+global.enemy[1].e_name+" and "+global.enemy[1].e_pron_pos+" cohorts from behind!"
                    break;
            }
            break;
        case 2:
            switch global.en_count {
                case 1: 
                    str[0] = upper(global.enemy[1].e_art)+global.enemy[1].e_name+" snuck up from behind!"
                    break;
                case 2: 
                    str[0] = upper(global.enemy[1].e_art)+global.enemy[1].e_name+" and "+global.enemy[1].e_pron_pos+" cohort snuck up from behind!"
                    break;
                case 3: 
                case 4:
                case 5:
                    str[0] = upper(global.enemy[1].e_art)+global.enemy[1].e_name+" and "+global.enemy[1].e_pron_pos+" cohorts snuck up from behind!"
                    break;
            }
            break;
    }
}

switch global.en_count {
    case 1: global.totalexp = global.enemy[1].e_exp; break;
    case 2: global.totalexp = global.enemy[1].e_exp+global.enemy[2].e_exp; break;
    case 3: global.totalexp = global.enemy[1].e_exp+global.enemy[2].e_exp+global.enemy[3].e_exp; break;
    case 4: global.totalexp = global.enemy[1].e_exp+global.enemy[2].e_exp+global.enemy[3].e_exp+global.enemy[4].e_exp; break;
    case 5: global.totalexp = global.enemy[1].e_exp+global.enemy[2].e_exp+global.enemy[3].e_exp+global.enemy[4].e_exp+global.enemy[5].e_exp; break;
}

alarm[1] = 1

