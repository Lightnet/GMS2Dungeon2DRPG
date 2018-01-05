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


if(bedit){
	
	var k=keyboard_lastkey;
	
	if(k>=65 and k<=90 or k>=97 and k<=122 or k == 8){
		show_debug_message("Key:"+string(k));
		
		if (string_length(keyboard_string)<limit) 
			playername = keyboard_string;
		else
			keyboard_string = playername;
	}else{
		keyboard_string = playername;
	}


	if(alarm[1] <= 0){
		displayname = playername + "_";
		alarm[1] = room_speed / 4;
		//show_debug_message("tick");
	}else{
		displayname = playername;	
	}
	
}else{
	displayname = playername;
}


draw_text(4+200,4+4+20*3, string(displayname));

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
		obj_dungeon_status.name = playername;
		obj_dungeon_status.born_gender = "Male";
		room_goto(rm_dungeon_default);
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,4+4*3+20*5,"Start Game");