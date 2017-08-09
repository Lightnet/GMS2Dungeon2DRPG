/// @description Insert description here
// You can write your code in this editor
event_inherited();

//scr_getadventurercount();

if (instance_exists(obj_adventurers)){
	//check adventure counts
	obj_adventurers.alarm[1] = room_speed/6;
}