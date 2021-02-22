draw_set_alpha(1)
draw_set_font(global.thenfont)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_sprite(sprite_index,0,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ))
draw_sprite(sprYouAreHere,0,__view_get( e__VW.XView, 0 )+xyou,__view_get( e__VW.YView, 0 )+yyou)
if array_length_1d(mark_x) > 1 {
    for (var i = array_length_1d(mark_x) - 1; i > -1; i--;) {
        draw_sprite(sprMapMark,0,__view_get( e__VW.XView, 0 )+mark_x[i],__view_get( e__VW.YView, 0 )+mark_y[i])
    }
}

// test stuff
if keyboard_check_direct(vk_lalt) and global.debug {
    draw_text(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ), string_hash_to_newline("MAP X: " + string(xyou - floor(objPlayer.x / 10))+"#MAP Y: " + string(yyou - floor(objPlayer.y / 10))))
}

