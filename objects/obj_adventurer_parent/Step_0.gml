/// @description Insert description here
// You can write your code in this editor
event_inherited();

var inst,xx;

if(hp <= 0){
	script_state = noone;
	exit;
}

inst = instance_nearest(x, y, obj_monster_parent);//works
//draw_line(x, y, 0, 0);
if inst != id
{
	//draw_line(x, y, inst.x+8, inst.y+8);
	if(distance_to_object(inst) < 8){
		script_state = scr_adventurer_attack;
	}else{
		if(btodungeoncore){
			script_state = scr_move_to_dungeoncore;
		}
		if(breturnhome){
			script_state = scr_move_to_dugeonexit;
		}
	}
	//show_debug_message("Line?");
}

if(script_state != noone){
	script_execute(script_state);
}

