switch global.pl_count {
    case 1:
        global.dead[2] = 1
        global.dead[3] = 1
        global.dead[4] = 1
        break;
    case 2:
        global.dead[3] = 1
        global.dead[4] = 1
        break;
    case 3:
        global.dead[4] = 1
        break;
}

if flash < 3 {
    flash++
} 

/*if !instance_exists(objPause) and !instance_exists(objFadeOut) and !instance_exists(objMapDisplay) and !instance_exists(objCustomFadeInOut) and !instance_exists(objTextBox) 
and !instance_exists(objButterflyGet) and !instance_exists(objGoodNight)  and !instance_exists(obj_inv) 
and !instance_exists(objShop) and !instance_exists(objStorage)  
and !instance_exists(objBattleSwirl) and !instance_exists(objATMDisplay) and */

if !ie(parDeactivator) and !global.cutscene and !ie(objBattleSwirl) and room != rmGameOver and (!objDebug.active or !objDebug.can_input) {
//and !get_flag(28) {
    if keyboard_check_pressed(global.kb_map) {
        instance_create(0,0,objMapDisplay);
    }
    if keyboard_check_pressed(global.kb_enter) {
        instance_create(0,0,objPause);
    }
}

/* */
///Instance deactivation
//
/*
if !global.cutscene {
    instance_deactivate_all(true)
    instance_activate_region(view_xview[0] - 100, view_yview[0] - 100, view_xview[0] + 520, view_yview[0] + 520, true);
    
    instance_activate_object(DoNotDeactivateMe)
} else {
    instance_activate_all()
}

/* */
/*  */
