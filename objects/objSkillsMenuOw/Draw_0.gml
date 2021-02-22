draw_set_alpha(1)
draw_set_font(global.thenfont)
draw_set_halign(fa_left)
draw_set_color(c_white)

if global.psiuser[global.current_inv+1] {
    draw_window(x+72,y+32,8,9)
    draw_window(x+136,y+32,19,9)
    draw_text(x+_x[1],y+_y[1],string_hash_to_newline("Offense"))
    draw_text(x+_x[1],y+_y[2],string_hash_to_newline("Assist"))
    draw_text(x+_x[1],y+_y[3],string_hash_to_newline("Recover"))
    draw_text(x+_x[1],y+_y[4],string_hash_to_newline("Passive"))
    
    if skilllearnt[1+16*psimode]  or skilllearnt[2+16*psimode]  or skilllearnt[3+16*psimode]  or skilllearnt[4+16*psimode]  { draw_text(x+_x[2],y+_y[1],string_hash_to_newline(skillname[1+16*psimode]))  }
    if skilllearnt[5+16*psimode]  or skilllearnt[6+16*psimode]  or skilllearnt[7+16*psimode]  or skilllearnt[8+16*psimode]  { draw_text(x+_x[2],y+_y[2],string_hash_to_newline(skillname[5+16*psimode]))  }
    if skilllearnt[9+16*psimode]  or skilllearnt[10+16*psimode] or skilllearnt[11+16*psimode] or skilllearnt[12+16*psimode] { draw_text(x+_x[2],y+_y[3],string_hash_to_newline(skillname[9+16*psimode]))  }
    if skilllearnt[13+16*psimode] or skilllearnt[14+16*psimode] or skilllearnt[15+16*psimode] or skilllearnt[16+16*psimode] { draw_text(x+_x[2],y+_y[4],string_hash_to_newline(skillname[13+16*psimode])) }
    
    if skilllearnt[1+16*psimode] { draw_text(x+_x[3],y+_y[1],string_hash_to_newline(skillletter[1+16*psimode])) }
    if skilllearnt[5+16*psimode] { draw_text(x+_x[3],y+_y[2],string_hash_to_newline(skillletter[5+16*psimode])) }
    if skilllearnt[9+16*psimode] { draw_text(x+_x[3],y+_y[3],string_hash_to_newline(skillletter[9+16*psimode])) }
    if skilllearnt[13+16*psimode] { draw_text(x+_x[3],y+_y[4],string_hash_to_newline(skillletter[13+16*psimode])) }
    
    if skilllearnt[2+16*psimode] { draw_text(x+_x[4],y+_y[1],string_hash_to_newline(skillletter[2+16*psimode])) } 
    if skilllearnt[6+16*psimode] { draw_text(x+_x[4],y+_y[2],string_hash_to_newline(skillletter[6+16*psimode])) }
    if skilllearnt[10+16*psimode] { draw_text(x+_x[4],y+_y[3],string_hash_to_newline(skillletter[10+16*psimode])) }
    if skilllearnt[14+16*psimode] { draw_text(x+_x[4],y+_y[4],string_hash_to_newline(skillletter[14+16*psimode])) }
    
    if skilllearnt[3+16*psimode] { draw_text(x+_x[5],y+_y[1],string_hash_to_newline(skillletter[3+16*psimode])) }
    if skilllearnt[7+16*psimode] { draw_text(x+_x[5],y+_y[2],string_hash_to_newline(skillletter[7+16*psimode])) }
    if skilllearnt[11+16*psimode] { draw_text(x+_x[5],y+_y[3],string_hash_to_newline(skillletter[11+16*psimode])) }
    if skilllearnt[15+16*psimode] { draw_text(x+_x[5],y+_y[4],string_hash_to_newline(skillletter[15+16*psimode])) }
    
    if skilllearnt[4+16*psimode] { draw_text(x+_x[6],y+_y[1],string_hash_to_newline(skillletter[4+16*psimode])) }
    if skilllearnt[8+16*psimode] { draw_text(x+_x[6],y+_y[2],string_hash_to_newline(skillletter[8+16*psimode])) }
    if skilllearnt[12+16*psimode] { draw_text(x+_x[6],y+_y[3],string_hash_to_newline(skillletter[12+16*psimode])) }
    if skilllearnt[16+16*psimode] { draw_text(x+_x[6],y+_y[4],string_hash_to_newline(skillletter[16+16*psimode])) }
    
    if mode > 0 and skillname[num] !="" and skilllearnt[num] {
        if psimode != 3 {
            draw_window(x+56,y+56,10,6)
            if skilltarget[num] = 0 {
                draw_text(x+64,y+_y[3],string_hash_to_newline("To one of us"))
            } else if skilltarget[num] = 1 {
                draw_text(x+64,y+_y[3],string_hash_to_newline("To all of us"))
            } else if skilltarget[num] = 2 {
                draw_text(x+64,y+_y[3],string_hash_to_newline("To one enemy"))
            } else if skilltarget[num] = 3 {
                draw_text(x+64,y+_y[3],string_hash_to_newline("To all enemies"))
            }
            draw_text(x+64,y+_y[4],string_hash_to_newline("PP Cost: "+string(skillcost[num])))
        }
        draw_window(x+72,y+104,27,7)
        
        if message = "" {
            draw_text(x+_x[1],y+112,string_hash_to_newline(skilldesc[num]))
        } else {
            draw_text(x+_x[1],y+112,string_hash_to_newline(message))
        }
    }
} else {
    draw_window(x+72,y+32,8,5)
    if psimode = 0 {
        draw_window(x+136,y+32,19,11)
    } else {
        draw_window(x+136,y+32,19,9)
    }
    
    draw_text(x+_x[1],y+_y[1],string_hash_to_newline("Normal"))
    draw_text(x+_x[1],y+_y[2],string_hash_to_newline("Passive"))
    
    if psimode = 0 {
        if skilllearnt[1] { draw_text(x+_x[1]+64,y+_y[1],string_hash_to_newline(skillname[1])) }
        if skilllearnt[2] { draw_text(x+_x[2]+72,y+_y[1],string_hash_to_newline(skillname[2])) }
        if skilllearnt[3] { draw_text(x+_x[1]+64,y+_y[2],string_hash_to_newline(skillname[3])) }
        if skilllearnt[4] { draw_text(x+_x[2]+72,y+_y[2],string_hash_to_newline(skillname[4])) }
        if skilllearnt[5] { draw_text(x+_x[1]+64,y+_y[3],string_hash_to_newline(skillname[5])) }
        if skilllearnt[6] { draw_text(x+_x[2]+72,y+_y[3],string_hash_to_newline(skillname[6])) }
        if skilllearnt[7] { draw_text(x+_x[1]+64,y+_y[4],string_hash_to_newline(skillname[7])) }
        if skilllearnt[8] { draw_text(x+_x[2]+72,y+_y[4],string_hash_to_newline(skillname[8])) }
        if skilllearnt[9] { draw_text(x+_x[1]+64,y+_y[5],string_hash_to_newline(skillname[9])) }
        if skilllearnt[10] { draw_text(x+_x[2]+72,y+_y[5],string_hash_to_newline(skillname[10])) }
    } else {
        if skilllearnt[1+16*psimode]  or skilllearnt[2+16*psimode]  or skilllearnt[3+16*psimode]  or skilllearnt[4+16*psimode]  { draw_text(x+_x[2],y+_y[1],string_hash_to_newline(skillname[1+16*psimode]))  }
        if skilllearnt[5+16*psimode]  or skilllearnt[6+16*psimode]  or skilllearnt[7+16*psimode]  or skilllearnt[8+16*psimode]  { draw_text(x+_x[2],y+_y[2],string_hash_to_newline(skillname[5+16*psimode]))  }
        if skilllearnt[9+16*psimode]  or skilllearnt[10+16*psimode] or skilllearnt[11+16*psimode] or skilllearnt[12+16*psimode] { draw_text(x+_x[2],y+_y[3],string_hash_to_newline(skillname[9+16*psimode]))  }
        if skilllearnt[13+16*psimode] or skilllearnt[14+16*psimode] or skilllearnt[15+16*psimode] or skilllearnt[16+16*psimode] { draw_text(x+_x[2],y+_y[4],string_hash_to_newline(skillname[13+16*psimode])) }
        
        if skilllearnt[1+16*psimode] { draw_text(x+_x[3],y+_y[1],string_hash_to_newline(skillletter[1+16*psimode])) }
        if skilllearnt[5+16*psimode] { draw_text(x+_x[3],y+_y[2],string_hash_to_newline(skillletter[5+16*psimode])) }
        if skilllearnt[9+16*psimode] { draw_text(x+_x[3],y+_y[3],string_hash_to_newline(skillletter[9+16*psimode])) }
        if skilllearnt[13+16*psimode] { draw_text(x+_x[3],y+_y[4],string_hash_to_newline(skillletter[13+16*psimode])) }
        
        if skilllearnt[2+16*psimode] { draw_text(x+_x[4],y+_y[1],string_hash_to_newline(skillletter[2+16*psimode])) } 
        if skilllearnt[6+16*psimode] { draw_text(x+_x[4],y+_y[2],string_hash_to_newline(skillletter[6+16*psimode])) }
        if skilllearnt[10+16*psimode] { draw_text(x+_x[4],y+_y[3],string_hash_to_newline(skillletter[10+16*psimode])) }
        if skilllearnt[14+16*psimode] { draw_text(x+_x[4],y+_y[4],string_hash_to_newline(skillletter[14+16*psimode])) }
        
        if skilllearnt[3+16*psimode] { draw_text(x+_x[5],y+_y[1],string_hash_to_newline(skillletter[3+16*psimode])) }
        if skilllearnt[7+16*psimode] { draw_text(x+_x[5],y+_y[2],string_hash_to_newline(skillletter[7+16*psimode])) }
        if skilllearnt[11+16*psimode] { draw_text(x+_x[5],y+_y[3],string_hash_to_newline(skillletter[11+16*psimode])) }
        if skilllearnt[15+16*psimode] { draw_text(x+_x[5],y+_y[4],string_hash_to_newline(skillletter[15+16*psimode])) }
        
        if skilllearnt[4+16*psimode] { draw_text(x+_x[6],y+_y[1],string_hash_to_newline(skillletter[4+16*psimode])) }
        if skilllearnt[8+16*psimode] { draw_text(x+_x[6],y+_y[2],string_hash_to_newline(skillletter[8+16*psimode])) }
        if skilllearnt[12+16*psimode] { draw_text(x+_x[6],y+_y[3],string_hash_to_newline(skillletter[12+16*psimode])) }
        if skilllearnt[16+16*psimode] { draw_text(x+_x[6],y+_y[4],string_hash_to_newline(skillletter[16+16*psimode])) }
    }
    
    if mode = 1 {
        if skilllearnt[num] {
            //draw_window(x+56,y+56,10,6)
            if psimode = 0 {
                draw_window(x+72,y+120,27,7)
                draw_text(x+_x[1],y+127,string_hash_to_newline(skilldesc[num]))
            } else {
                draw_window(x+72,y+104,27,7)
                draw_text(x+_x[1],y+112,string_hash_to_newline(skilldesc[num]))
            }
            /*if skilltarget[num] = 0 {
                draw_text(x+64,y+_y[3],"To one of us")
            } else if skilltarget[num] = 1 {
                draw_text(x+64,y+_y[3],"To all of us")
            } else if skilltarget[num] = 2 {
                draw_text(x+64,y+_y[3],"To one enemy")
            } else if skilltarget[num] = 3 {
                draw_text(x+64,y+_y[3],"To all enemies")
            }
            draw_text(x+64,y+_y[4],"PP Cost: "+string(skillcost[num]))
            draw_text(x+_x[1],y+126,skilldesc[num])*/
        }
    }
}

if mode == 2 {
    draw_window(x+216,y+32,9,8)
    switch global.pl_count {
        case 1:
            draw_text(x+_x[3],y+_y[1],string_hash_to_newline(global.s_name[1]))
            break;
        case 2:
            draw_text(x+_x[3],y+_y[1],string_hash_to_newline(global.s_name[1]))
            draw_text(x+_x[3],y+_y[2],string_hash_to_newline(global.s_name[2]))
            break;
        case 3:
            draw_text(x+_x[3],y+_y[1],string_hash_to_newline(global.s_name[1]))
            draw_text(x+_x[3],y+_y[2],string_hash_to_newline(global.s_name[2]))
            draw_text(x+_x[3],y+_y[3],string_hash_to_newline(global.s_name[3]))
            break;
        case 4:
            draw_text(x+_x[3],y+_y[1],string_hash_to_newline(global.s_name[1]))
            draw_text(x+_x[3],y+_y[2],string_hash_to_newline(global.s_name[2]))
            draw_text(x+_x[3],y+_y[3],string_hash_to_newline(global.s_name[3]))
            draw_text(x+_x[3],y+_y[4],string_hash_to_newline(global.s_name[4]))
            break;
    }
}

draw_sprite(spr_cursor,cursor_image_index,x+cursor_x-3,y+cursor_y+8)

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

/* */
/*  */
