draw_set_color(c_white)
draw_set_halign(fa_center);
draw_set_alpha(alpha);
draw_set_font(global.thenfont)
draw_window(173,150,10,9)

for (var i = 1; i <= menuText[0,0]; i+=1) {
    if (menuSelected = i) { 
        draw_set_color(c_white); 
    } else { 
        draw_set_color(c_gray); 
    }
    draw_text(213,140+(i*16)-20*menuPage,string_hash_to_newline(menuText[menuPage,i]));
}
draw_set_color(c_gray); 
draw_set_font(global.thenfont2)
draw_set_halign(fa_left);
draw_text(2,240-27,string_hash_to_newline("#(C) Cidoku"));
draw_set_halign(fa_right);
draw_text(426-2,240-27,string_hash_to_newline("#Ver. " + GM_version + "-["));

