draw_set_alpha(alpha)
draw_set_color(c_white)
draw_rectangle(0,0,426,240,0)
if !donefor {
    draw_sprite_ext(sprArrows,0,213+32,120,1,1,0,arrow[1],1)
    draw_sprite_ext(sprArrows,1,213,120-32,1,1,90,arrow[2],1)
    draw_sprite_ext(sprArrows,2,213-32,120,1,1,180,arrow[3],1)
    draw_sprite_ext(sprArrows,3,213,120+32,1,1,270,arrow[4],1)
}

