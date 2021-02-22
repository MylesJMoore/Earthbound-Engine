__view_set( e__VW.XView, 0, 50*sin(n) )
n+=pi/40
if n >= 2*pi {__view_set( e__VW.XView, 0, 0 ); instance_destroy()} else {alarm[1] = 1}

