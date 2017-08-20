
isboundbox = false;
iscollide = false;
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;
var screenx = device_mouse_x_to_gui(0);
var screeny = device_mouse_y_to_gui(0); 
//place preview
if(selectindex != noone){
    //selectobject.visible = true;
    //divide and floor and time
	if(creatures[ selectindex, 1] == noone){
		exit;
	}
	
	draw_sprite(creatures[ selectindex, 1], 0, mouse_x, mouse_y);
	
}else{
    //show_debug_message("error object");
}