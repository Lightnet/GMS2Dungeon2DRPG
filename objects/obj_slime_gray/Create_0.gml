/// @description Insert description here
// You can write your code in this editor
event_inherited();

spriter_load(working_directory + "slime/slime.scml","slime",false);

spriter_apply_character_map(self,"slime_gray");

name = "Gray Slime"
objtype = "Creature";
hp = 20;
maxhp = hp;
mp = 50;
maxmp = mp;

attack = 10;