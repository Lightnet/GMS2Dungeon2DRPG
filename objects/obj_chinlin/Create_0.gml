/// @description Insert description here
// You can write your code in this editor
/// initialize the slime
//phy_fixed_rotation = true;
event_inherited();

hb_offset_x = -16;
hb_offset_y = -16;
hb_width = 32;
hb_height = 4;
monsterTier = 2;
name = "chinlin";
hungerDrop = 0;
mineStrength = 100;

image_speed = 0.2;
spd = 1.5;
state = scr_bot_idle_state;
/*
alarm[0] =  room_speed * irandom_range(2,5);
sight = 64;
xaxis = 0;
yaxis = 0;
death_sprite = spr_chinlin_stand_up;
faction = factions.dungeon;
baseFaction = factions.dungeon;


movement = IDLE;
face = RIGHT;

//create the sprite array
sprite[UP, MOVE] = spr_chinlin_run_up;
sprite[DOWN, MOVE] = spr_chinlin_run_down;
sprite[RIGHT, MOVE] = spr_chinlin_run_right;
sprite[LEFT, MOVE] = spr_chinlin_run_right;

sprite[UP, ATTACK] = spr_chinlin_run_right;
sprite[DOWN, ATTACK] = spr_chinlin_run_right;
sprite[RIGHT, ATTACK] = spr_chinlin_run_right;
sprite[LEFT, ATTACK] = spr_chinlin_run_right;

sprite[UP, IDLE] = spr_chinlin_stand_up;
sprite[DOWN, IDLE] = spr_chinlin_stand_down;
sprite[RIGHT, IDLE] = spr_chinlin_stand_right;
sprite[LEFT, IDLE] = spr_chinlin_stand_right;
*/