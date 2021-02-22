draw_set_alpha(1)
draw_set_color(c_white)
if draw_line1 { draw_line_width(426,0,line1x,line1y,32) }
if draw_line2 { draw_line_width(0,0,line2x,line2y,32) }
if draw_flash { draw_set_alpha(alpha); draw_rectangle(0,0,426,240,0) }
draw_set_alpha(1)

