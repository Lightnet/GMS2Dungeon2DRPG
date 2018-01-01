//
draw_set_colour(c_white);
draw_text(4,4,"Slime Dungeon [New Game]");


if(scr_draw_button(0,20*2,128+32,20)){
	if(alarm[0] <= 0){
		//show_debug_message("click save");
		menuui = scr_mainmenu;
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,4+20*2,"Back");


if(scr_draw_button(0,4+20*3,128+32,20)){
	if(alarm[0] <= 0){
		//menuui = scr_mainmenu;
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,4+4+20*3,"Name");


draw_text(4+200,4+4+20*3,"Guest");

if(scr_draw_button(0,4*2+20*4,128+32,20)){
	if(alarm[0] <= 0){
		//menuui = scr_mainmenu;
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,4+4*2+20*4,"Gender");

draw_text(4+200,4+4*2+20*4,"Male");

if(scr_draw_button(0,4*3+20*5,128+32,20)){
	if(alarm[0] <= 0){
		//menuui = scr_mainmenu;
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,4+4*3+20*5,"Start Game");