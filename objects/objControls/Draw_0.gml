draw_set_color(c_white)
draw_set_halign(fa_left);
draw_set_font(global.thenfont)

draw_set_alpha(alpha);
draw_sprite(sprKeyboardIcon,0,16,16);
draw_sprite(sprGamepadIcon,0,164,16);

for (var i = 1; i <= 6; i+=1) {
    if (menuSelected[0] = i and menuPage = 0) { 
        if waiting[0,i] = 1 {
            draw_set_color(c_yellow); 
        } else {
            draw_set_color(c_white); 
        }
    } else { 
        draw_set_color(c_gray);          
    }
    draw_text(16,64+(i*16)-20,string_hash_to_newline(menuText[0,i]));
    
    if (menuSelected[1] = i and menuPage = 1) { 
        if waiting[1,i] = 1 {
            draw_set_color(c_yellow); 
        } else {
            draw_set_color(c_white); 
        }
    } else { 
        draw_set_color(c_gray);          
    }
    draw_text(164,64+(i*16)-20,string_hash_to_newline(menuText[1,i]));
}

for (var i = 7; i <= 8; i+=1) {
    if (menuSelected[0] = i) { 
        draw_set_color(c_white); 
    } else { 
        draw_set_color(c_gray);          
    }
    draw_text(16,96+(i*16)-20,string_hash_to_newline(menuText[0,i]));
}


draw_set_color(c_gray); 

if wait {
    draw_text(16,172,string_hash_to_newline("Press ESCAPE to cancel."));
} else if menuSelected[0] > 4 and menuSelected[0] < 7 and menuSelected[1] == menuSelected[0] {
    draw_text(16,172,string_hash_to_newline("Used in inventory, shop, stats, and equipment menus to switch between players."));
}

draw_set_font(global.theifont)
draw_set_halign(fa_right)

draw_text(410,16,string_hash_to_newline("Controls Setup"));

