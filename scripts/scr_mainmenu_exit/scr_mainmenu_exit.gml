//
draw_set_colour(c_white);
draw_text(4,4,"Slime Dungeon [Quit]");

if(scr_draw_button(0,20*2,128+32,20)){
	if(alarm[0] <= 0){
		game_end();
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,2+20*2,"Yes?");

if(scr_draw_button(0,8+20*3,128+32,20)){
	if(alarm[0] <= 0){
		show_debug_message("click save")
		menuui = scr_mainmenu;
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,10+20*3,"No?");




