//
draw_set_colour(c_white);
draw_text(4,4,"Slime Dungeon [Load Game]");

if(scr_draw_button(0,20*2,128+32,20)){
	if(alarm[0] <= 0){
		//show_debug_message("click save")
		menuui = scr_mainmenu;
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,4+20*2,"Back");

if (file_exists("Save.sav")){
	if(scr_draw_button(0,4+20*3,128+32,20)){
		
		script_execute(scr_load);
		
		global._ishud = true;
		
		room_goto(rm_dungeon);
		//do something here
	}
	draw_set_colour(c_white);
	draw_text(4,6+20*3,"Load File!");
}

