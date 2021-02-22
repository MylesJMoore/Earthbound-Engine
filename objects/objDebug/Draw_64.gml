/// @description  handle debug
if !global.debug { exit }

if draw_stats {
    var xp, i, alt;
    xp = 0;
    
    //Draw line
    draw_set_font(a)
    draw_set_halign(fa_left)
    draw_line(0, y+48, room_width, y+48);
    
    //Draw name
    //var name;
    //name = string(objPersistent.device) + " " + joy_name(objPersistent.device);
    //draw_text(xp, y, name);
    
    y += 16;
    
    //Draw axes
    for (var i = 0; i < objPersistent.axes; i += 1)
    {
        
        draw_set_color(c_red);
        draw_rectangle(xp+4, y+2, xp+12, y+30, 0);
        draw_set_color(c_green);
        draw_rectangle(xp+4, y+16 + 14 * joy_axis(objPersistent.device, i), xp+12, y+2, 0);
        draw_set_color(c_white);
        draw_text(xp*2+20,64, string_hash_to_newline(string(joy_axis(objPersistent.device, i))));
        xp += 16;
    }
    
    //Draw buttons
    alt = false;
    for (var i = 0; i < objPersistent.buttons; i += 1)
    {
        if (joy_pressed(objPersistent.device, i)) draw_set_color(c_white);
        else if (joy_released(objPersistent.device, i)) draw_set_color(c_black);
        else if (joy_button(objPersistent.device, i)) draw_set_color(c_green);
        else draw_set_color(c_red);
        draw_circle(xp+8, y+8 + 16*alt, 7, 0);
        if (alt) xp += 16;
        alt = !alt;
    }
    if (alt) xp += 16;
    
    //Draw hats
    for (var i = 0; i < objPersistent.hats; i += 1)
    {
        draw_set_color(c_black);
        draw_circle(xp+16, y+16, 11, 1);
        draw_set_color(c_red);
        var hat, xo, yo;
        hat = joy_hat(objPersistent.device, i);
        if (hat < 0) {xo = 0; yo = 0;}
        else {xo = lengthdir_x(11, 90-hat); yo = lengthdir_y(11, 90-hat);}
        draw_circle(xp+16+xo, y+16+yo, 3, 0);
        xp += 32;
    }
    
    
    y -= 16;
}

