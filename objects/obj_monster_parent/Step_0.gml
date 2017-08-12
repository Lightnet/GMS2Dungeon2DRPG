/// @description Insert description here
// You can write your code in this editor
event_inherited();

var inst,xx;

inst = instance_nearest(x, y, obj_adventurer_parent);//works
//draw_line(x, y, 0, 0);
if inst != id
{
	if(distance_to_object(inst) < 32){
		script_state = scr_creature_move_to_target;
	}
	
	//attack in range
	//draw_line(x, y, inst.x+8, inst.y+8);
	if(distance_to_object(inst) < 10){
		script_state = scr_creature_attack;
	}else{
		
	}
	//show_debug_message("Line?");
}


if(script_state != noone){
	script_execute(script_state);
}