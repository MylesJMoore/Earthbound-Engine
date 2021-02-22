draw_set_alpha(1)
draw_set_font(global.thenfont2)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_window(x+72,__view_get( e__VW.YView, 0 )+32,30,19)
draw_text_ext(x+84,__view_get( e__VW.YView, 0 )+40,string_hash_to_newline(global.s_name[global.current_inv+1]+"#"+"Level"+" "+string(global.s_level[global.current_inv+1])),10,240)

draw_set_halign(fa_right)
draw_text_ext(x+300,__view_get( e__VW.YView, 0 )+40,string_hash_to_newline(string(global.s_off[global.current_inv+1])+"#"+
                                           string(global.s_def[global.current_inv+1])+"#"+
                                           string(global.s_speed[global.current_inv+1])+"#"+
                                           string(global.s_guts[global.current_inv+1])+"#"+
                                           string(global.s_vitality[global.current_inv+1])+"#"+
                                           string(global.s_iq[global.current_inv+1])+"#"+
                                           string(global.s_luck[global.current_inv+1])+"#"+
                                           fir_res+"#"+
                                           ice_res+"#"+
                                           thn_res+"#"+
                                           fla_res+"#"+
                                           hyp_res+"#"+
                                           par_res),10,240)
                                           
draw_text_ext(x+164,__view_get( e__VW.YView, 0 )+70,string_hash_to_newline("Hit Points:#Psychic Points:#Experience:"),10,240)

draw_text_ext(x+192,__view_get( e__VW.YView, 0 )+70,string_hash_to_newline(string(global.s_hp[global.current_inv+1])+" /#"+string(global.s_pp[global.current_inv+1])+" /"),10,240)
if global.s_level[global.current_inv+1] < 101 {
    draw_text_ext(x+208,__view_get( e__VW.YView, 0 )+70,string_hash_to_newline(string(global.s_hpmax[global.current_inv+1])+"#"+string(global.s_ppmax[global.current_inv+1])+"#"+string(global.s_exp[global.current_inv+1])+"#"+string(global.s_nextexp[global.s_level[global.current_inv+1]]-global.s_exp[global.current_inv+1])+" EXP for next level."),10,240)
} else {
    draw_text_ext(x+208,__view_get( e__VW.YView, 0 )+70,string_hash_to_newline(string(global.s_hpmax[global.current_inv+1])+"#"+string(global.s_ppmax[global.current_inv+1])+"#"+string(global.s_exp[global.current_inv+1])),10,240)
}                    
draw_text_ext(x+272,__view_get( e__VW.YView, 0 )+40,string_hash_to_newline("Offense:#Defense:#Speed:#Guts:#Vitality:#IQ:#Luck:#Fire res.:#Freeze res.:#Thunder res.:#Flash res.:#Hypnosis res.:#Paralysis res.:"),10,240)

switch global.pl_count {
    case 0: 
        draw_sprite(sprPortraits,3,x+72,y+8);
        break;
    case 1:
        draw_sprite(sprPortraits,global.gender*6,x+72,y+8);
        break;
    case 2:
        draw_sprite(sprPortraits,global.gender*6,x+72,y+8);
        draw_sprite(sprPortraits,1,x+72+23,y+8);
        break;
    case 3:
        draw_sprite(sprPortraits,global.gender*6,x+72,y+8);
        draw_sprite(sprPortraits,1,x+72+23,y+8);
        draw_sprite(sprPortraits,2,x+72+46,y+8);
        break;
    case 4:
        draw_sprite(sprPortraits,global.gender*6,x+72,y+8);
        draw_sprite(sprPortraits,1,x+72+23,y+8);
        draw_sprite(sprPortraits,2,x+72+46,y+8);
        draw_sprite(sprPortraits,2,x+72+69,y+8);
        break;
}

draw_sprite(sprInvSel,0,__view_get( e__VW.XView, 0 )+72+cursor_x2,y+8)

