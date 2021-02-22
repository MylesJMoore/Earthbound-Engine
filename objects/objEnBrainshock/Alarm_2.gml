__view_set( e__VW.XView, 0, 50*sin(n) )
n+=pi/40
if n >= 4*pi {__view_set( e__VW.XView, 0, 0 ); active=0; alarm[3]=1} else {alarm[2] = 1}

