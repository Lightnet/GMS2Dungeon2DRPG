
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
	if(slotlist[ selectindex, 1] == noone){
		exit;
	}
	
    if(objectissnap){
		draw_sprite(slotlist[ selectindex, 1], 0, (mouse_x div _CELLWIDTH) * 32 , (mouse_y div _CELLHEIGHT) * 32);
    }else if(objectisfixed){
        if(issnap){
            draw_sprite(slotlist[ selectindex, 1], 0, (mouse_x div _CELLWIDTH)*32 + _CELLWIDTH/2, (mouse_y div _CELLHEIGHT)*32 + _CELLHEIGHT/2);
        }else{
            draw_sprite(slotlist[ selectindex, 1], 0, mouse_x, mouse_y);
        }
    }else{
        draw_sprite(slotlist[ selectindex, 1], 0, mouse_x, mouse_y);
    }
}else{
    //show_debug_message("error object");
}