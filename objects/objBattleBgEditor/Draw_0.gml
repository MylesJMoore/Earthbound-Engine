var k;
switch ly[layer].effect {
    case 0: k = "Sine"; break;
    case 1: k = "Vert. Compression"; break;
    case 2: k = "Horz. Compression"; break;
    case 3: k = "Sine + Vert. Compression"; break;
}
draw_set_halign(fa_left)
draw_set_font(global.thenfont)
draw_set_color(c_black)
draw_rectangle(0,0,426,32,c_black)
draw_rectangle(0,208,426,240,c_black)
draw_set_color(c_white)
draw_text(8,6,
    string_hash_to_newline("Frequency: "+string(ly[layer].frequency)+"#"+
    "Phaserate: "+string(ly[layer].phaserate))
)
draw_text(160,6,
    string_hash_to_newline("Amplitude: "+string(ly[layer].amplitude)+"#"+
    "Alpha: "+string(ly[layer].alpha))
)
draw_text(312,6,
    string_hash_to_newline("Horz. speed: "+string(ly[layer].speedx)+"#"+
    "Vert. speed: "+string(ly[layer].speedy))
)
draw_text(8,206,
    string_hash_to_newline("Layer: "+string(layer)+"#"+
    "Effect: "+k)
)
draw_text(160,206, 
    string_hash_to_newline("Background: "+sprite_get_name(global.battle_bg[ly[layer].bgg,0])+"#"+
    "ENTER: Reset. C: Copy data. L: Load image")
)

draw_sprite(spr_cursor,cursor_image_index,cursor_x+8,cursor_y+8)

