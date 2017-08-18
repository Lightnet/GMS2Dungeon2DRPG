/// @description Insert description here
// You can write your code in this editor
event_inherited();
objtype = ADVENTURER;
job = "None";

hp = 100;
maxhp = hp;
mp = 100;
maxmp = mp;

attack = 100;
defense = 50;
magicattack = 100;
magicdefense = 100;

breturnhome = false;
btodungeoncore = true;
bdestroy = false;

path = path_add();
//alarm[0] = room_speed;

path_step = 1; //default for step event

//alarm[0] = room_speed;

//script_state = noone;
script_state = scr_move_to_dungeoncore;

bspriter = true;
//spriterfile = working_directory+ "";

if(bspriter){
	spriter_load(working_directory + "human/human.scml","human",false);
}
