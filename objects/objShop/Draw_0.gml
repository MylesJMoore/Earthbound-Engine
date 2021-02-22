draw_set_alpha(1)
draw_set_font(global.thenfont2)
draw_set_color(c_white)

if ok {
    draw_window(x+160,__view_get( e__VW.YView, 0 )+32,19,17)
    draw_window(x+8,__view_get( e__VW.YView, 0 )+32,18,iff(global.item[num,21] > 0 or global.item[num,22] > 0,13,10))
    draw_window(x+8,__view_get( e__VW.YView, 0 )+136,7,4)
    
    for (var i=0;i<10;i++){
        if shop_items > i {
            //Gray out items if no space left or not enough money
            if (item_exists_at_slot(global.current_inv,19)) or (global.money < global.item[global.shop[shop_index,i],19]) {
                draw_set_color(make_color_rgb(100,100,100))
            } else {
                draw_set_color(c_white)
            }
        
            draw_set_halign(fa_left)
            draw_text(x+172,_y[i+1],string_hash_to_newline(global.item[global.shop[shop_index,i],1]))
            draw_set_halign(fa_right)
            draw_text(x+300,_y[i+1],string_hash_to_newline("$"+string(global.item[global.shop[shop_index,i],19])))
        }
    }

    draw_set_color(c_white)
    draw_set_halign(fa_left)
    draw_sprite(spr_cursor,cursor_image_index,x+169,cursor_y+8)
    draw_set_halign(fa_right)
    draw_text(x+56,__view_get( e__VW.YView, 0 )+146,string_hash_to_newline("$"+string(global.money)))
    
    draw_set_halign(fa_left)
    draw_text_ext(x+20,y+41,string_hash_to_newline("Offense"+"#"+"Defense"+"#"+"Speed"+"#"+"Guts"+"#"+"IQ#"+
                            iff(global.item[num,21] > 0 or global.item[num,22] > 0,"When consumed you recover#","")+
                            iff(global.item[num,21] > 0,"      "+string(global.item[num,21])+" HP","")+
                            iff(global.item[num,22] > 0,"      "+string(global.item[num,22])+" PP","")),12,500)
    draw_set_halign(fa_right)
    draw_text_ext(x+116,y+41,string_hash_to_newline(string(global.s_off[global.current_inv+1])+"#"+string(global.s_def[global.current_inv+1])+"#"+string(global.s_speed[global.current_inv+1])+"#"+string(global.s_guts[global.current_inv+1])+"#"+string(global.s_iq[global.current_inv+1])),12,100)
    draw_set_halign(fa_left)
    
    //If the player can equip the item
    //Awful code warning
    if global.item[num,5] = global.current_inv+1 or global.item[num,5] = -1 {
            draw_text_ext(x+117,y+41,string_hash_to_newline(iff(global.s_baseoff[global.current_inv+1]+global.item[num,6]+
                                         global.item[global.weap_equip[global.current_inv+1],6]+
                                         global.item[global.body_equip[global.current_inv+1],6]+
                                         global.item[global.arm_equip[global.current_inv+1],6]+
                                         global.item[global.other_equip[global.current_inv+1],6] <=
                                         global.s_baseoff[global.current_inv+1]+
                                         global.item[global.weap_equip[global.current_inv+1],6]+
                                         global.item[global.body_equip[global.current_inv+1],6]+
                                         global.item[global.arm_equip[global.current_inv+1],6]+
                                         global.item[global.other_equip[global.current_inv+1],6] or global.weap_equip[global.current_inv+1] = num or global.body_equip[global.current_inv+1] = num or global.arm_equip[global.current_inv+1] = num or global.other_equip[global.current_inv+1] = num 
                                         ,"","`"+string(global.s_baseoff[global.current_inv+1]+global.item[num,6]+
                                             iff(global.item[num,4] = 1,0,global.item[global.weap_equip[global.current_inv+1],6])+
                                             iff(global.item[num,4] = 2,0,global.item[global.body_equip[global.current_inv+1],6])+
                                             iff(global.item[num,4] = 3,0,global.item[global.arm_equip[global.current_inv+1],6])+
                                             iff(global.item[num,4] = 4,0,global.item[global.other_equip[global.current_inv+1],6])))+
                                 iff(global.s_basedef[global.current_inv+1]+global.item[num,7]+
                                         global.item[global.weap_equip[global.current_inv+1],7]+
                                         global.item[global.body_equip[global.current_inv+1],7]+
                                         global.item[global.arm_equip[global.current_inv+1],7]+
                                         global.item[global.other_equip[global.current_inv+1],7] <=
                                         global.s_basedef[global.current_inv+1]+
                                         global.item[global.weap_equip[global.current_inv+1],7]+
                                         global.item[global.body_equip[global.current_inv+1],7]+
                                         global.item[global.arm_equip[global.current_inv+1],7]+
                                         global.item[global.other_equip[global.current_inv+1],7] or global.weap_equip[global.current_inv+1] = num or global.body_equip[global.current_inv+1] = num or global.arm_equip[global.current_inv+1] = num or global.other_equip[global.current_inv+1] = num 
                                         ,"#","#`"+string(global.s_basedef[global.current_inv+1]+global.item[num,7]+
                                             iff(global.item[num,4] = 1,0,global.item[global.weap_equip[global.current_inv+1],7])+
                                             iff(global.item[num,4] = 2,0,global.item[global.body_equip[global.current_inv+1],7])+
                                             iff(global.item[num,4] = 3,0,global.item[global.arm_equip[global.current_inv+1],7])+
                                             iff(global.item[num,4] = 4,0,global.item[global.other_equip[global.current_inv+1],7])))+
                                 iff(global.s_basespeed[global.current_inv+1]+global.item[num,9]+
                                         global.item[global.weap_equip[global.current_inv+1],9]+
                                         global.item[global.body_equip[global.current_inv+1],9]+
                                         global.item[global.arm_equip[global.current_inv+1],9]+
                                         global.item[global.other_equip[global.current_inv+1],9] <=
                                         global.s_basespeed[global.current_inv+1]+
                                         global.item[global.weap_equip[global.current_inv+1],9]+
                                         global.item[global.body_equip[global.current_inv+1],9]+
                                         global.item[global.arm_equip[global.current_inv+1],9]+
                                         global.item[global.other_equip[global.current_inv+1],9] or global.weap_equip[global.current_inv+1] = num or global.body_equip[global.current_inv+1] = num or global.arm_equip[global.current_inv+1] = num or global.other_equip[global.current_inv+1] = num 
                                         ,"#","#`"+string(global.s_basespeed[global.current_inv+1]+global.item[num,9]+
                                             iff(global.item[num,4] = 1,0,global.item[global.weap_equip[global.current_inv+1],9])+
                                             iff(global.item[num,4] = 2,0,global.item[global.body_equip[global.current_inv+1],9])+
                                             iff(global.item[num,4] = 3,0,global.item[global.arm_equip[global.current_inv+1],9])+
                                             iff(global.item[num,4] = 4,0,global.item[global.other_equip[global.current_inv+1],9])))+
                                 iff(global.s_baseguts[global.current_inv+1]+global.item[num,8]+
                                         global.item[global.weap_equip[global.current_inv+1],8]+
                                         global.item[global.body_equip[global.current_inv+1],8]+
                                         global.item[global.arm_equip[global.current_inv+1],8]+
                                         global.item[global.other_equip[global.current_inv+1],8] <=
                                         global.s_baseguts[global.current_inv+1]+
                                         global.item[global.weap_equip[global.current_inv+1],8]+
                                         global.item[global.body_equip[global.current_inv+1],8]+
                                         global.item[global.arm_equip[global.current_inv+1],8]+
                                         global.item[global.other_equip[global.current_inv+1],8] or global.weap_equip[global.current_inv+1] = num or global.body_equip[global.current_inv+1] = num or global.arm_equip[global.current_inv+1] = num or global.other_equip[global.current_inv+1] = num 
                                         ,"#","#`"+string(global.s_baseguts[global.current_inv+1]+global.item[num,8]+
                                             iff(global.item[num,4] = 1,0,global.item[global.weap_equip[global.current_inv+1],8])+
                                             iff(global.item[num,4] = 2,0,global.item[global.body_equip[global.current_inv+1],8])+
                                             iff(global.item[num,4] = 3,0,global.item[global.arm_equip[global.current_inv+1],8])+
                                             iff(global.item[num,4] = 4,0,global.item[global.other_equip[global.current_inv+1],8])))+
                                 iff(global.s_baseiq[global.current_inv+1]+global.item[num,20]+
                                         global.item[global.weap_equip[global.current_inv+1],20]+
                                         global.item[global.body_equip[global.current_inv+1],20]+
                                         global.item[global.arm_equip[global.current_inv+1],20]+
                                         global.item[global.other_equip[global.current_inv+1],20] <=
                                         global.s_baseiq[global.current_inv+1]+
                                         global.item[global.weap_equip[global.current_inv+1],20]+
                                         global.item[global.body_equip[global.current_inv+1],20]+
                                         global.item[global.arm_equip[global.current_inv+1],20]+
                                         global.item[global.other_equip[global.current_inv+1],20] or global.weap_equip[global.current_inv+1] = num or global.body_equip[global.current_inv+1] = num or global.arm_equip[global.current_inv+1] = num or global.other_equip[global.current_inv+1] = num 
                                         ,"#","#`"+string(global.s_baseiq[global.current_inv+1]+global.item[num,20]+
                                             iff(global.item[num,4] = 1,0,global.item[global.weap_equip[global.current_inv+1],20])+
                                             iff(global.item[num,4] = 2,0,global.item[global.body_equip[global.current_inv+1],20])+
                                             iff(global.item[num,4] = 3,0,global.item[global.arm_equip[global.current_inv+1],20])+
                                             iff(global.item[num,4] = 4,0,global.item[global.other_equip[global.current_inv+1],20]))))
                                 ,12,100)
    }
    
    switch global.pl_count {
    case 0: 
        draw_sprite(sprPortraits,3,x+8,y+8);
        break;
    case 1:
        draw_sprite(sprPortraits,global.gender*6,x+8,y+8);
        break;
    case 2:
        draw_sprite(sprPortraits,global.gender*6,x+8,y+8);
        draw_sprite(sprPortraits,1,x+8+23,y+8);
        break;
    case 3:
        draw_sprite(sprPortraits,global.gender*6,x+8,y+8);
        draw_sprite(sprPortraits,1,x+8+23,y+8);
        draw_sprite(sprPortraits,2,x+8+46,y+8);
        break;
    case 4:
        draw_sprite(sprPortraits,global.gender*6,x+8,y+8);
        draw_sprite(sprPortraits,1,x+8+23,y+8);
        draw_sprite(sprPortraits,2,x+8+46,y+8);
        draw_sprite(sprPortraits,2,x+8+69,y+8);
        break;
    }
    
    draw_sprite(sprInvSel,0,__view_get( e__VW.XView, 0 )+8+cursor_x2,y+8)
}

