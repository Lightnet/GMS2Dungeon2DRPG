/// @description Insert description here
// You can write your code in this editor

//https://forum.yoyogames.com/index.php?threads/guide-meet-the-new-camera-system.12269/


///move 10% toward the player
// current += (target - current) * 0.1;

if(bfollowplayer){
    if(instance_exists(obj_player)){
        //fixed view port to update
        //view_xview[0] = x - view_wview / 2;
        //view_yview[0] = y - view_hview / 2;
        //add lag move here
        //x += (obj_player.x - x) * 0.1;
        //y += (obj_player.y - y) * 0.1;
		camera_set_view_target(view_camera[0],obj_view);
    }else{
		//follow default view object
		var view_w = camera_get_view_width(view_camera[0]);
		var view_h = camera_get_view_height(view_camera[0]);
		camera_set_view_border(view_camera[0], view_w/2, view_h/2);
		camera_set_view_target(view_camera[0],obj_view);
	}
	
	
	if(obj_input.right_key){
		x += movespeed / (panspeed * zoom);
		show_debug_message("x" + string(x));
	}
	
	if(obj_input.left_key){
		x -= movespeed / (panspeed * zoom);
		
		show_debug_message("x" + string(x));
	}
	
	if(obj_input.down_key){
		y += movespeed / (panspeed * zoom);
		show_debug_message("y" + string(y));
	}
	
	if(obj_input.up_key){
		y -= movespeed / (panspeed * zoom);
		show_debug_message("y" + string(y));
	}
	
}

if(bcameracontrol){
	camera_set_view_target(view_camera[0],noone);
    ///zoom	
	//Move the zoom level based on mouse scrolling. Clamp the value so stuff doesn't get too silly.
	zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.1), 0.1, 5);
	
	//Get current size
	var view_w = camera_get_view_width(view_camera[0]);
	var view_h = camera_get_view_height(view_camera[0]);

	//Set the rate of interpolation
	var rate = 0.2;

	//Get new sizes by interpolating current and target zoomed size
	var new_w = lerp(view_w, zoom_level * default_zoom_width, rate);
	var new_h = lerp(view_h, zoom_level * default_zoom_height, rate);

	//Apply the new size
	camera_set_view_size(view_camera[0], new_w, new_h);
	
	//Get the shift necessary to re-align the view.
	var shift_x = camera_get_view_x(view_camera[0]) - (new_w - view_w) * 0.5;
	var shift_y = camera_get_view_y(view_camera[0]) - (new_h - view_h) * 0.5;

	//Update the view position
	camera_set_view_pos(view_camera[0],shift_x, shift_y);
	
    //panning view port
    //speed = 0;
	
    if(mouse_check_button_pressed(mb_middle)){
		drag_x = mouse_x;
	    drag_y = mouse_y;
	}
	
	if(mouse_check_button(mb_middle)){
	
		view_xview = camera_get_view_x(view_camera[0]);
		view_yview = camera_get_view_y(view_camera[0]);
		//vpos_w = camera_get_view_width(view_camera[0]);
		//vpos_h = camera_get_view_height(view_camera[0]) ;
		
        //draw view
        view_xview = drag_x - (mouse_x - view_xview);
        view_yview = drag_y - (mouse_y - view_yview);
        //doesn't go outside view
        //view_xview = max(0,min(view_xview, room_width - vpos_w));
        //view_yview = max(0,min(view_yview, room_height - vpos_h));
		
        //change cursor
        window_set_cursor(cr_size_all);
        //show_debug_message("drag? "+string(drag_x)+":"+string(drag_y));
        //show_debug_message("drag? :"+string(view_xview[0]));
		//show_debug_message("drag?");
		
		camera_set_view_pos(view_camera[0], view_xview, view_yview);
    }
	
	if(mouse_check_button_released(mb_middle)){
        window_set_cursor(cr_default);
    }
	
	
	
	
	//Check if the mouse is clicked. If so, update the click position.
	//if(mouse_check_button_pressed(mb_middle))
	//{
	    //click_x = mouse_x;
	    //click_y = mouse_y;
	//}

	//Get target view position and size. size is halved so the view will focus around its center
	//var vpos_x = camera_get_view_x(view_camera[0]);
	//var vpos_y = camera_get_view_y(view_camera[0]);
	//var vpos_w = camera_get_view_width(view_camera[0]) * 0.5;
	//var vpos_h = camera_get_view_height(view_camera[0]) * 0.5;

	//The interpolation rate
	//var rate = 0.2;

	//Interpolate the view position to the new, relative position.
	//var new_x = lerp(vpos_x, click_x - vpos_w, rate);
	//var new_y = lerp(vpos_y, click_y - vpos_h, rate);

	//Update the view position
	//camera_set_view_pos(view_camera[0], new_x, new_y);
	
}