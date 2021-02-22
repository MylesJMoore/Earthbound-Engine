alpha = 0
alarm[0] = 1

ini_load_config(0)

menuSelected[0] = 1;
menuSelected[1] = 1;
menuPage = 0;

menuText[0,0] = 8;
menuText[0,1] = "Choose: Button "+string(global.kb_choose+1)
menuText[0,2] = "Cancel: Button "+string(global.kb_back+1)
menuText[0,3] = "Menu: Button "+string(global.kb_enter+1)
menuText[0,4] = "Map: Button "+string(global.kb_map+1)
menuText[0,5] = "Select player to the left (inventory, etc): Button "+string(global.kb_q+1)
menuText[0,6] = "Select player to the right (inventory, etc): Button "+string(global.kb_w+1)
menuText[0,7] = "Reset all to defaults"
menuText[0,8] = "Back to menu"

menuText[1,0] = 8;
menuText[1,1] = "Choose: Button "+string(global.gamepad_choose+1)
menuText[1,2] = "Cancel: Button "+string(global.gamepad_back+1)
menuText[1,3] = "Menu: Button "+string(global.gamepad_enter+1)
menuText[1,4] = "Map: Button "+string(global.gamepad_map+1)
menuText[1,5] = "Select player to the left (inventory, etc): Button "+string(global.gamepad_q+1)
menuText[1,6] = "Select player to the right (inventory, etc): Button "+string(global.gamepad_w+1)
menuText[1,7] = menuText[0,7]
menuText[1,8] = menuText[0,8]

wait = 0;
waiting[0,6] = 0
waiting[1,6] = 0
ok = 0

