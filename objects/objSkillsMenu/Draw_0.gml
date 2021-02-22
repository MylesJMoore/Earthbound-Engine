draw_set_font(global.thenfont)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_set_alpha(1)
if global.psiuser[global.current_inv+1] {
    
    draw_window(x+72+8,y+8,8,7)
    draw_window(x+136+8,y+8,19,9)
    draw_text(_x[1],_y[1],string_hash_to_newline("Offense"))
    draw_text(_x[1],_y[2],string_hash_to_newline("Assist"))
    draw_text(_x[1],_y[3],string_hash_to_newline("Recover"))
    
    if skilllearnt[1+16*psimode]  or skilllearnt[2+16*psimode]  or skilllearnt[3+16*psimode]  or skilllearnt[4+16*psimode]  { draw_text(_x[2],_y[1],string_hash_to_newline(skillname[1+16*psimode]))  }
    if skilllearnt[5+16*psimode]  or skilllearnt[6+16*psimode]  or skilllearnt[7+16*psimode]  or skilllearnt[8+16*psimode]  { draw_text(_x[2],_y[2],string_hash_to_newline(skillname[5+16*psimode]))  }
    if skilllearnt[9+16*psimode]  or skilllearnt[10+16*psimode] or skilllearnt[11+16*psimode] or skilllearnt[12+16*psimode] { draw_text(_x[2],_y[3],string_hash_to_newline(skillname[9+16*psimode]))  }
    if skilllearnt[13+16*psimode] or skilllearnt[14+16*psimode] or skilllearnt[15+16*psimode] or skilllearnt[16+16*psimode] { draw_text(_x[2],_y[4],string_hash_to_newline(skillname[13+16*psimode])) }
    
    if skilllearnt[1+16*psimode] { draw_text(_x[3],_y[1],string_hash_to_newline(skillletter[1+16*psimode])) }
    if skilllearnt[5+16*psimode] { draw_text(_x[3],_y[2],string_hash_to_newline(skillletter[5+16*psimode])) }
    if skilllearnt[9+16*psimode] { draw_text(_x[3],_y[3],string_hash_to_newline(skillletter[9+16*psimode])) }
    if skilllearnt[13+16*psimode] { draw_text(_x[3],_y[4],string_hash_to_newline(skillletter[13+16*psimode])) }
    
    if skilllearnt[2+16*psimode] { draw_text(_x[4],_y[1],string_hash_to_newline(skillletter[2+16*psimode])) } 
    if skilllearnt[6+16*psimode] { draw_text(_x[4],_y[2],string_hash_to_newline(skillletter[6+16*psimode])) }
    if skilllearnt[10+16*psimode] { draw_text(_x[4],_y[3],string_hash_to_newline(skillletter[10+16*psimode])) }
    if skilllearnt[14+16*psimode] { draw_text(_x[4],_y[4],string_hash_to_newline(skillletter[14+16*psimode])) }
    
    if skilllearnt[3+16*psimode] { draw_text(_x[5],_y[1],string_hash_to_newline(skillletter[3+16*psimode])) }
    if skilllearnt[7+16*psimode] { draw_text(_x[5],_y[2],string_hash_to_newline(skillletter[7+16*psimode])) }
    if skilllearnt[11+16*psimode] { draw_text(_x[5],_y[3],string_hash_to_newline(skillletter[11+16*psimode])) }
    if skilllearnt[15+16*psimode] { draw_text(_x[5],_y[4],string_hash_to_newline(skillletter[15+16*psimode])) }
    
    if skilllearnt[4+16*psimode] { draw_text(_x[6],_y[1],string_hash_to_newline(skillletter[4+16*psimode])) }
    if skilllearnt[8+16*psimode] { draw_text(_x[6],_y[2],string_hash_to_newline(skillletter[8+16*psimode])) }
    if skilllearnt[12+16*psimode] { draw_text(_x[6],_y[3],string_hash_to_newline(skillletter[12+16*psimode])) }
    if skilllearnt[16+16*psimode] { draw_text(_x[6],_y[4],string_hash_to_newline(skillletter[16+16*psimode])) }
    
    if mode = 1 and skillname[num] !="" and skilllearnt[num] {
        draw_window(x+64,y+32,10,6)
        if skilltarget[num] = 0 {
            draw_text(x+72,_y[3],string_hash_to_newline("To one of us"))
        } else if skilltarget[num] = 1 {
            draw_text(x+72,_y[3],string_hash_to_newline("To all of us"))
        } else if skilltarget[num] = 2 {
            draw_text(x+72,_y[3],string_hash_to_newline("To one enemy"))
        } else if skilltarget[num] = 3 {
            draw_text(x+72,_y[3],string_hash_to_newline("To all enemies"))
        }
        draw_text(x+72,_y[4],string_hash_to_newline("PP Cost: "+string(skillcost[num])))
    }
} else {
    draw_window(x+80,y+8,27,11)
    if skilllearnt[1] { draw_text(_x[1],y+_y[1],string_hash_to_newline(skillname[1])) }
    if skilllearnt[2] { draw_text(_x[2]+32,y+_y[1],string_hash_to_newline(skillname[2])) }
    if skilllearnt[3] { draw_text(_x[1],y+_y[2],string_hash_to_newline(skillname[3])) }
    if skilllearnt[4] { draw_text(_x[2]+32,y+_y[2],string_hash_to_newline(skillname[4])) }
    if skilllearnt[5] { draw_text(_x[1],y+_y[3],string_hash_to_newline(skillname[5])) }
    if skilllearnt[6] { draw_text(_x[2]+32,y+_y[3],string_hash_to_newline(skillname[6])) }
    if skilllearnt[7] { draw_text(_x[1],y+_y[4],string_hash_to_newline(skillname[7])) }
    if skilllearnt[8] { draw_text(_x[2]+32,y+_y[4],string_hash_to_newline(skillname[8])) }
    if skilllearnt[9] { draw_text(_x[1],y+_y[5],string_hash_to_newline(skillname[9])) }
    if skilllearnt[10] { draw_text(_x[2]+32,y+_y[5],string_hash_to_newline(skillname[10])) }
}

draw_sprite(spr_cursor,cursor_image_index,cursor_x-3,cursor_y+8)

