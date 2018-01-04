isboundbox = false;
iscollide = false;
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;


var screenx = device_mouse_x_to_gui(0);
var screeny = device_mouse_y_to_gui(0);
draw_text(xx-64,16,"BUILD MODE");
var id_name = "none";
   
draw_text(xx-64,32,"Select: "+id_name);
draw_set_halign(fa_left);

if(scr_draw_button(4,128)){
	if(alarm[0] <= 0){
		if(issnap){
			issnap = false;	
		}else{
			issnap = true;	
		}
		alarm[0] = room_speed / 8;
	}
}

if(issnap){
	snaptext = "Grid[o]";
}else{
	snaptext = "Grid[x]";
}
draw_set_color(c_white);
draw_text(4,128,snaptext);

if(scr_draw_button(4,128+20)){
	if(alarm[0] <= 0){
		
		alarm[0] = room_speed / 8;
	}
}
draw_set_color(c_white);
draw_text(4,128+20,"Clear");


if(scr_draw_button(4,128+20*3)){
	if(alarm[0] <= 0){
		list_index--;
		alarm[0] = room_speed / 8;
	}
}
draw_set_color(c_white);
draw_text(4,128+20*3,"Up");


if(scr_draw_button(4,128+20*15)){
	if(alarm[0] <= 0){
		list_index++;
		alarm[0] = room_speed / 8;
	}
}
draw_set_color(c_white);
draw_text(4,128+20*15,"Down");

// draw icons
list_count = 0;
if(list_index <= 0){
    list_index = 0;
}
//check if array list max list to not move
if(array_height_2d(slotlist) <= list_max){
    list_index = 0;
}else{
    if(list_index > array_height_2d(slotlist) - list_max){
        list_index = array_height_2d(slotlist) - list_max;
    }
}

yy = 296;
//draw iamge and check if mouse is press left
for (i = list_index; i < array_height_2d(slotlist); i++){    
    if(list_count >= list_max){
        break;
    }
    //if(screenx > 4 and screenx < (32+4) and screeny > (yy - 64 + (32+4)*list_count) and screeny < (yy - 32 + (32+4)*list_count)){    
    //}
	draw_set_color(c_white);
    draw_text(48,yy+((32+4)*list_count)-64,slotlist[ i, 0]);
    if(slotlist[ i, 1] != noone){
        var xOffset = sprite_get_xoffset(slotlist[ i, 1]);
        var yOffset = sprite_get_yoffset(slotlist[ i, 1]);
        draw_sprite(slotlist[ i, 1],0,4+xOffset,yy+((32+4)*list_count)-64+yOffset);
    }else{
        draw_sprite(spr_slot,0,4,yy+((32+4)*list_count)-64);
    }
	
	if(scr_draw_button(4,yy+((32+4)*list_count)-64,32,32)){
		if(alarm[0] <= 0){
			show_debug_message("click");
			alarm[0] = room_speed / 8;
		}
	}
	
    list_count++;
}