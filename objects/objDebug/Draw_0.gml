/// @description Draw stats

show_debug_overlay(0)
if draw_stats {
    draw_set_font(a)
    draw_set_halign(fa_left)
    draw_set_color(c_white)
    draw_set_alpha(0.9)
    show_debug_overlay(1)
    if instance_exists(objPlayer) {
        draw_text(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+8,string_hash_to_newline("#*STATS*"+
                                      "#"+room_get_name(room)+
                                      "#FPS: "+string(fps)+"/60"+
                                      "#X--: "+string(objPlayer.x)+"/"+string(room_width)+
                                      "#Y--: "+string(objPlayer.y)+"/"+string(room_height)+
                                      "#XVW: "+string(__view_get( e__VW.XView, 0 ))+
                                      "#YVW: "+string(__view_get( e__VW.YView, 0 ))+
                                      "#VSP: "+string(objPlayer.vspeed)+
                                      "#HSP: "+string(objPlayer.hspeed)+
                                      "#SPD: "+string(objPlayer.speed)+
                                      "#DRC: "+string(objPlayer.direction)+
                                      "#DX-: "+string(dx)+
                                      "#DY-: "+string(dy)+
                                      "##"+string(global.s_name[p])+
                                      "#LEV: "+string(global.s_level[p])+
                                      "#EXP: "+string(global.s_exp[p])+
                                      "#HP-: "+string(global.s_hp[p])+"/"+string(global.s_hpmax[p])+
                                      "#PP-: "+string(global.s_pp[p])+"/"+string(global.s_ppmax[p])+
                                      "#OFF: "+string(global.s_baseoff[p])+"/"+string(global.s_off[p])+
                                      "#DEF: "+string(global.s_basedef[p])+"/"+string(global.s_def[p])+
                                      "#SEC: "+string(global.secondsplaying)+
                                      "#PL-: "+string(global.pl_count)+
                                      "#INV: "+string(global.current_inv))
                                      )
    } else if room = rmBattle {
        draw_text(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+48,string_hash_to_newline("#*STATS*"+
                                      "#"+room_get_name(room)+
                                      "#FPS: "+string(fps)+"/60"+
                                      "#X2-: "+string(global.thex)+
                                      "#Y2-: "+string(global.they)+
                                      "##"+string(global.s_name[p])+
                                      "#LEV: "+string(global.s_level[p])+
                                      "#EXP: "+string(global.s_exp[p])+
                                      "#HP-: "+string(global.s_hp[p])+"/"+string(global.s_hpmax[p])+
                                      "#PP-: "+string(global.s_pp[p])+"/"+string(global.s_ppmax[p])+
                                      "#OFF: "+string(global.s_baseoff[p])+"/"+string(global.s_off[p])+
                                      "#DEF: "+string(global.s_basedef[p])+"/"+string(global.s_def[p])+
                                      "#SEC: "+string(global.secondsplaying)+
                                      "#PL-: "+string(global.pl_count)+
                                      "#INV: "+string(global.current_inv)+
                                      "#PLY: "+string(global._pl)+
                                      "#ITE: "+string(global.itemtouse[objBattleController._turn]))
                                      )
    }
    draw_set_alpha(1)
} 

///Console
if active {
    draw_set_alpha(0.5)
    draw_set_color(c_black)
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+426,__view_get( e__VW.YView, 0 )+120,0)
    draw_set_alpha(1)
    draw_set_halign(fa_left)
    draw_set_color(make_color_rgb(192,192,192))
    draw_set_font(global.thenfont2)
    for(var i=0;i<array_length_1d(buffer);i++) {
        draw_text(__view_get( e__VW.XView, 0 )+2,__view_get( e__VW.YView, 0 )+2+i*11,string_hash_to_newline(buffer[i]))
    }
}

