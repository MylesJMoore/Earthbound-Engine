/// @description Animate overlays
overlay_image_index += overlay_image_speed
overlay2_image_index += overlay2_image_speed

///Choose shown sprite and cap HP/PP

if global.dead[pl] {
    choose_health_bar_sprite(2)
} else {
    switch global.pl_count {
        case 1:
            dead = global.dead[1]
            break;
        case 2:
            dead = global.dead[1] or global.dead[2]
            break;
        case 3:
            dead = global.dead[1] or global.dead[2] or global.dead[3]
            break;
        case 4:
            dead = global.dead[1] or global.dead[2] or global.dead[3] or global.dead[4]
            break;
    }
    
    choose_health_bar_sprite(dead)
    
    if hp_actual < 0    { hp_actual = 0 }
    if hp_actual > 999  { hp_actual = 999 }
    
    if pp_actual < 0    { pp_actual = 0 }
    if pp_actual > 999  { pp_actual = 999 }
    
    if global.s_hp[pl] < 0    { global.s_hp[pl] = 0 }
    if global.s_hp[pl] > 999  { global.s_hp[pl] = 999 }
    
    if global.s_pp[pl] < 0    { global.s_pp[pl] = 0 }
    if global.s_pp[pl] > 999  { global.s_pp[pl] = 999 }
}

///Movement
if room = rmBattle {
    if objBattleController.in_battle {
        if global.allowboxjump {
            if keyboard_check_pressed(global.kb_choose) and path_position = 0 {
                path_start(pJump,3.5,0,0)
            }
        }
    } 
}

