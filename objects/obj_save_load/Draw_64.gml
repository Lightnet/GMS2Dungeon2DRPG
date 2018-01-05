/// @description Insert description here
// You can write your code in this editor

myheight = display_get_gui_height();

if(scr_draw_button(4,myheight-32)){
	if(alarm[0] <= 0){
		show_debug_message("click save")
		script_execute(scr_save);
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,myheight-32, "Save");

if(scr_draw_button(4,myheight-64)){
	if(alarm[0] <= 0){
		show_debug_message("click load")
		script_execute(scr_load);
		room_goto(rm_generate_dungeon);
		alarm[0] = room_speed / 8;
	}
}
draw_set_colour(c_white);
draw_text(4,myheight-64, "Load");
