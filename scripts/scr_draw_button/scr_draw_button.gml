px = argument[0];
py = argument[1];


width = 128;
height = 18;

//show_debug_message("argument_count:"+string(argument_count));

if( argument_count > 2){
	width = argument[2];
	height = argument[3];
}

//text = argument[2];

//mx = mouse_x;
//my = mouse_y;

mx = device_mouse_x_to_gui(0);
my = device_mouse_y_to_gui(0);

click = false;

//show_debug_message("Mouse: "+string(mx)+":"+string(my));
//show_debug_message("Min: "+string(px)+":"+string(py));
//show_debug_message("Max: "+string(width)+":"+string(height));

draw_set_colour(c_blue);
draw_rectangle(px,py,px + width,py + height,false);

if((mx > px) and (mx < (px + width)) and (my > py) and (my < py + height)) {
	//show_debug_message("hit");
	//draw_text(px, py, text);
	if(mouse_check_button_pressed(mb_left)){
		//show_debug_message("press")
		click = true;
	}
	//draw_rectangle(mx,my,mx+20,my+20,false);
}else{
	//draw_rectangle(mx,my,mx+20,my+20,true);
	//show_debug_message("miss");
}

return click;

