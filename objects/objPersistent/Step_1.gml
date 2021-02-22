/*joy_update();

if joy_button(device, global.gamepad_choose) {
    keyboard_key_press(global.kb_choose)
} else if joy_button(device, global.gamepad_back) {
    keyboard_key_press(global.kb_back)
} else if joy_button(device, global.gamepad_enter) {
    keyboard_key_press(global.kb_enter)
} else if joy_button(device, global.gamepad_map) {
    keyboard_key_press(global.kb_map)
} else if joy_button(device, global.gamepad_q) {
    keyboard_key_press(global.kb_q)
} else if joy_button(device, global.gamepad_w) {
    keyboard_key_press(global.kb_w)
} 

if joy_released(device, global.gamepad_choose) {
    keyboard_key_release(global.kb_choose)
} else if joy_released(device, global.gamepad_back) {
    keyboard_key_release(global.kb_back)
} else if joy_released(device, global.gamepad_enter) {
    keyboard_key_release(global.kb_enter)
} else if joy_released(device, global.gamepad_map) {
    keyboard_key_release(global.kb_map)
} else if joy_released(device, global.gamepad_q) {
    keyboard_key_release(global.kb_q)
} else if joy_released(device, global.gamepad_w) {
    keyboard_key_release(global.kb_w)
} 

if joy_count() > 0 {
    if instance_exists(objButterflyGet) or instance_exists(objTextBox) 
    or instance_exists(objPause) or instance_exists(obj_inv) 
    or instance_exists(objStorage) or instance_exists(objGoodNight) 
    or instance_exists(objQuestion) or instance_exists(objShop) or instance_exists(objMapDisplay) 
    or instance_exists(objATMDisplay) or instance_exists(objBattleMsg) or global.cutscene 
    or room = rmMenu or room = rmControls or room = rmNewGame or room = rmBattle or room = rmBgTest or room = rmNaming {
        if joy_axis(device,0) > 0.5 {
            keyboard_key_press(vk_right)
            keyboard_key_release(vk_left)
        } else if joy_axis(device,0) < -0.5 {
            keyboard_key_press(vk_left)
            keyboard_key_release(vk_right)
        } else {
            keyboard_key_release(vk_left)
            keyboard_key_release(vk_right)
        }
        
        if joy_axis(device,1) > 0.5 {
            keyboard_key_press(vk_down)
            keyboard_key_release(vk_up)
        } else if joy_axis(device,1) < -0.5 {
            keyboard_key_press(vk_up)
            keyboard_key_release(vk_down)
        } else {
            keyboard_key_release(vk_down)
            keyboard_key_release(vk_up)
        }
    }
}

/* */
/*  */
