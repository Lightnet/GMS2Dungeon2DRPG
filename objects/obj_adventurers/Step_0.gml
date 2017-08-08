/// @description Insert description here
// You can write your code in this editor

if(alarm[0] <= 0){
	if(instance_exists(obj_input)){
		if(obj_input.f3_key){
			//show_debug_message("F3 Key");
			if(instance_exists(obj_dungeon_exit)){
				show_debug_message("F3 Key");	
				show_debug_message("postion:"+ string(obj_dungeon_exit.x));
				show_debug_message("postion:"+ string(obj_dungeon_exit.y));
				//scr_generate_adventurers();
				scr_generate_raid();
			}
			alarm[0] = room_speed / 5;	
		}
	}
}