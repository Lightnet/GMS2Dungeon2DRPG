//
draw_set_colour(c_white);
draw_text(4,4,"Slime Dungeon");


if(scr_draw_button(0,4+20*2,128+32,20)){
	if(alarm[0] <= 0){
		show_debug_message("click save")
		menuui = scr_mainmenu_new;
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,4+20*2,"New Game");

if(scr_draw_button(0,4*2+20*3,128+32,20)){
	if(alarm[0] <= 0){
		show_debug_message("click save")
		menuui = scr_mainmenu_load;
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,4*2+20*3,"Load Game");

if(scr_draw_button(0,4*3+20*4,128+32,20)){
	if(alarm[0] <= 0){
		show_debug_message("click save")
		menuui = scr_mainmenu_options;
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,4*3+20*4,"Options");

if(scr_draw_button(0,4*4+20*5,128+32,20)){
	if(alarm[0] <= 0){
		show_debug_message("click save")
		menuui = scr_mainmenu_exit;
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,4*4+20*5,"Quit");


