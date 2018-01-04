px = argument[0];
py = argument[1];
width = 128;
height = 18;
//show_debug_message("argument_count:"+string(argument_count));
if( argument_count > 2){
	width = argument[2];
	height = argument[3];
}

//mx = mouse_x;
//my = mouse_y;
mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);
click = false;
//draw_set_colour(c_blue);
//draw_rectangle(px,py,px + width, py + height, false);

if((mx > px) and (mx < (px + width)) and (my > py) and (my < py + height)) {
	click = true;
}

return click;

