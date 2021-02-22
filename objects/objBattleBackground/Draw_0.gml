if alpha > 0 { //Don't even bother drawing this shit if the background is invisible anyway
    surface_set_target(surf);
    draw_sprite_tiled_area(back,image_index,tr_offsetx,tr_offsety,0,0,room_width*2,room_height*2)
    surface_reset_target();

    var phase,step,fstep,istep,offx;
    fstep = (scanline == 2)
    istep = 1 + (scanline > 0)
    
    if surface_exists(surf){ //Always make sure the surface is around
        for (var step=fstep; step<width; step+=istep) {
            phase = sin(frequency*(step+phaseoffset)/height);
            if effect = 0 {
                //Sine
                offx = (((offsetx mod width)+width) mod width);
                sourcex = offx+sin(phase)*amplitude;
                sourcey = step+offsety;
                draw_surface_part_ext(surf,sourcex,sourcey,width,1,0,step,1,1,c_white,alpha);
            } else if effect = 1 {
                //Vert. Comp
                sourcex = 0;
                sourcey = offsety+step+sin(phase)*amplitude;
                draw_surface_part_ext(surf,sourcex,sourcey,width,1,0,step,1,1,c_white,alpha);
            } else if effect = 2 {
                //Horz. Comp (incomplete, weird effect)
                part = width-sourcex-8;
                sourcex = step+sin(phase)*amplitude+100;
                sourcey = 0
                draw_surface_part_ext(surf,sourcex,sourcey,width,1,0,step,1,1,c_white,alpha);
            } else if effect = 3 {
                //Sine + Vert. Comp (needs extra width)
                offx = (((offsetx mod width)+width) mod width);
                sourcex = offx+sin(phase)*amplitude;
                sourcey = offsety+step+sin(phase)*amplitude;
                part = width-sourcex;
                draw_surface_part_ext(surf,sourcex,sourcey,part,1,0,step,1,1,c_white,alpha);
            }
        }
    }
}

