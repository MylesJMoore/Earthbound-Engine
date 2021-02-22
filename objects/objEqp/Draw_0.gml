draw_set_alpha(1)
draw_set_font(global.thenfont)
draw_set_color(c_white)
draw_window(x+72,y+32,20,9)
draw_window(x+240,y+32,9,9) //Unequip window
draw_set_halign(fa_right)
draw_text(_x[1]+40,_y[1]-2,string_hash_to_newline("Weapon:#Body:#Arms:#Other:"))
draw_set_halign(fa_left)
if global.weap_equip[global.current_inv+1] != 0 {
    draw_text(_x[1]+42,_y[1]-2,string_hash_to_newline("\\#"+global.item[global.weap_equip[global.current_inv+1],1]))
} else {
    draw_text(_x[1]+42,_y[1]-2,string_hash_to_newline("(None)"))
}
if global.body_equip[global.current_inv+1] != 0 {
    draw_text(_x[1]+42,_y[1]+12,string_hash_to_newline("\\#"+global.item[global.body_equip[global.current_inv+1],1]))
} else {
    draw_text(_x[1]+42,_y[1]+12,string_hash_to_newline("(None)"))
}
if global.arm_equip[global.current_inv+1] != 0 {
    draw_text(_x[1]+42,_y[1]+26,string_hash_to_newline("\\#"+global.item[global.arm_equip[global.current_inv+1],1]))
} else {
    draw_text(_x[1]+42,_y[1]+26,string_hash_to_newline("(None)"))
}
if global.other_equip[global.current_inv+1] != 0 {
    draw_text(_x[1]+42,_y[1]+40,string_hash_to_newline("\\#"+global.item[global.other_equip[global.current_inv+1],1]))
} else {
    draw_text(_x[1]+42,_y[1]+40,string_hash_to_newline("(None)"))
}

draw_text(_x[3]+4,_y[1]-2,string_hash_to_newline("Unequip"))
draw_text(_x[3]+4,_y[1]+12,string_hash_to_newline("Unequip"))
draw_text(_x[3]+4,_y[1]+26,string_hash_to_newline("Unequip"))
draw_text(_x[3]+4,_y[1]+40,string_hash_to_newline("Unequip"))

draw_window(x+200,__view_get( e__VW.YView, 0 )+192,14,5)

if mode = 1 {
    draw_window(x+72,__view_get( e__VW.YView, 0 )+32,30,19)
    draw_window(x+72,__view_get( e__VW.YView, 0 )+192,16,5)
    
    draw_text(_x[1],_y[1],string_hash_to_newline(eqp[1]+global.item[inv[1],1]))
    draw_text(_x[2],_y[1],string_hash_to_newline(eqp[2]+global.item[inv[2],1]))
    draw_text(_x[1],_y[2],string_hash_to_newline(eqp[3]+global.item[inv[3],1]))
    draw_text(_x[2],_y[2],string_hash_to_newline(eqp[4]+global.item[inv[4],1]))
    draw_text(_x[1],_y[3],string_hash_to_newline(eqp[5]+global.item[inv[5],1]))
    draw_text(_x[2],_y[3],string_hash_to_newline(eqp[6]+global.item[inv[6],1]))
    draw_text(_x[1],_y[4],string_hash_to_newline(eqp[7]+global.item[inv[7],1]))
    draw_text(_x[2],_y[4],string_hash_to_newline(eqp[8]+global.item[inv[8],1]))
    draw_text(_x[1],_y[5],string_hash_to_newline(eqp[9]+global.item[inv[9],1]))
    draw_text(_x[2],_y[5],string_hash_to_newline(eqp[10]+global.item[inv[10],1]))
    draw_text(_x[1],_y[6],string_hash_to_newline(eqp[11]+global.item[inv[11],1]))
    draw_text(_x[2],_y[6],string_hash_to_newline(eqp[12]+global.item[inv[12],1]))
    draw_text(_x[1],_y[7],string_hash_to_newline(eqp[13]+global.item[inv[13],1]))
    draw_text(_x[2],_y[7],string_hash_to_newline(eqp[14]+global.item[inv[14],1]))
    draw_text(_x[1],_y[8],string_hash_to_newline(eqp[15]+global.item[inv[15],1]))
    draw_text(_x[2],_y[8],string_hash_to_newline(eqp[16]+global.item[inv[16],1]))
    draw_text(_x[1],_y[9],string_hash_to_newline(eqp[17]+global.item[inv[17],1]))
    draw_text(_x[2],_y[9],string_hash_to_newline(eqp[18]+global.item[inv[18],1]))
    draw_text(_x[1],_y[10],string_hash_to_newline(eqp[19]+global.item[inv[19],1]))
    draw_text(_x[2],_y[10],string_hash_to_newline(eqp[20]+global.item[inv[20],1]))
    
    draw_text(x+212,y+199,string_hash_to_newline("Offense"+"#"+"Defense"))
    draw_set_halign(fa_right)
    draw_text(x+268,y+199,string_hash_to_newline(string(global.s_off[global.current_inv+1])+"#"+string(global.s_def[global.current_inv+1])))
    draw_set_halign(fa_left)
    if global.item[num,5] = global.current_inv+1 or global.item[num,5] = -1 {
        if global.weap_equip[global.current_inv+1] = num or global.body_equip[global.current_inv+1] = num or global.arm_equip[global.current_inv+1] = num or global.other_equip[global.current_inv+1] = num {
            draw_text(x+269,y+199,string_hash_to_newline("`"+string(global.s_baseoff[global.current_inv+1]+
                                             global.item[global.weap_equip[global.current_inv+1],6]+
                                             global.item[global.body_equip[global.current_inv+1],6]+
                                             global.item[global.arm_equip[global.current_inv+1],6]+
                                             global.item[global.other_equip[global.current_inv+1],6])+
                                 "#`"+string(global.s_basedef[global.current_inv+1]+
                                             global.item[global.weap_equip[global.current_inv+1],7]+
                                             global.item[global.body_equip[global.current_inv+1],7]+
                                             global.item[global.arm_equip[global.current_inv+1],7]+
                                             global.item[global.other_equip[global.current_inv+1],7])))
        } else {
            draw_text(x+269,y+199,string_hash_to_newline("`"+string(global.s_baseoff[global.current_inv+1]+global.item[num,6]+
                                             iff(global.item[num,4] = 1,0,global.item[global.weap_equip[global.current_inv+1],6])+
                                             iff(global.item[num,4] = 2,0,global.item[global.body_equip[global.current_inv+1],6])+
                                             iff(global.item[num,4] = 3,0,global.item[global.arm_equip[global.current_inv+1],6])+
                                             iff(global.item[num,4] = 4,0,global.item[global.other_equip[global.current_inv+1],6]))+
                                 "#`"+string(global.s_basedef[global.current_inv+1]+global.item[num,7]+
                                             iff(global.item[num,4] = 1,0,global.item[global.weap_equip[global.current_inv+1],7])+
                                             iff(global.item[num,4] = 2,0,global.item[global.body_equip[global.current_inv+1],7])+
                                             iff(global.item[num,4] = 3,0,global.item[global.arm_equip[global.current_inv+1],7])+
                                             iff(global.item[num,4] = 4,0,global.item[global.other_equip[global.current_inv+1],7]))))
        }
    }
    switch global.item[num,5] {
        case -1:
        case current_inv1:
            switch global.item[num,4] {
                case 0:
                    draw_text(_x[1],y+199,string_hash_to_newline("You can't equip this item."))
                    break;
                case 1:
                    if global.item[num,5] = -1 {
                        draw_text(_x[1],y+199,string_hash_to_newline("A weapon.#"+"Everyone can use this."))
                    } else {
                        draw_text(_x[1],y+199,string_hash_to_newline("A weapon.#"+global.s_name[global.item[num,5]]+" can use this."))
                    }
                    break;
                case 2:
                    if global.item[num,5] = -1 {
                        draw_text(_x[1],y+199,string_hash_to_newline("Body equipment.#"+"Everyone can use this."))
                    } else {
                        draw_text(_x[1],y+199,string_hash_to_newline("Body equipment.#"+global.s_name[global.item[num,5]]+" can use this."))
                    }
                    break;
                case 3:
                    if global.item[num,5] = -1 {
                        draw_text(_x[1],y+199,string_hash_to_newline("Arms equipment.#"+"Everyone can use this."))
                    } else {
                        draw_text(_x[1],y+199,string_hash_to_newline("Arms equipment.#"+global.s_name[global.item[num,5]]+" can use this."))
                    }
                    break;
                case 4:
                    if global.item[num,5] = -1 {
                        draw_text(_x[1],y+199,string_hash_to_newline("Other equipment.#"+"Everyone can use this."))
                    } else {
                        draw_text(_x[1],y+199,string_hash_to_newline("Other equipment.#"+global.s_name[global.item[num,5]]+" can use this."))
                    }
                    break;
            }
            break;
        default:
            if !is_undefined(num) {
                draw_text(_x[1],y+199,string_hash_to_newline("You can't equip this item."))
            } else {
                draw_text(_x[1],y+199,string_hash_to_newline("Nothing to equip here."))
            }
            break;
    }
} else {
    draw_text(x+212,y+199,string_hash_to_newline("Offense"+"#"+"Defense"))
    draw_text(x+269,y+199,string_hash_to_newline("   "+string(global.s_off[global.current_inv+1])+"#   "+string(global.s_def[global.current_inv+1])))
}

draw_sprite(spr_cursor,cursor_image_index,cursor_x,cursor_y)

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

