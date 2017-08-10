/// @description Insert description here
// You can write your code in this editor
event_inherited();
objtype = ADVENTURER;
job = "None";

breturnhome = false;
btodungeoncore = true;

path = path_add();
//alarm[0] = room_speed;

path_step = 1; //default for step event



//alarm[0] = room_speed;

//script_state = noone;
script_state = scr_move_to_dungeoncore;
