/// @description draw_background_tiled_horizontal(back,x,y)
/// @param back
/// @param x
/// @param y
function draw_background_tiled_horizontal(argument0, argument1, argument2) {

	/***************************************************
	  Usage :   draw_background_tiled_horizontal(back,x,y)
	  Arguments :   argument0   ==  background
	                argument1   ==  x
	                argument2   ==  y
	  Event :   draw event
	 ***************************************************/
 
	 var back,width,xx,yy,left,right,i;
 
	 back=argument0;
	 width=background_get_width(back);
	 xx=argument1;
	 yy=argument2;
	 left=-1;
	 right=__view_get( e__VW.XView, view_current )/width+__view_get( e__VW.WView, view_current )/width+1;
	 if (view_enabled)
	 {
	    for (var i=left; i<right; i+=1)
	    {
	        draw_background(back,xx mod width+width*i,yy);
	    };
	 }
	 else
	 {
	    for (var i=-1; i<room_width/width+1; i+=1)
	    {
	        draw_background(back,xx mod width+width*i,yy);
	    };
	 };
 



}
