/// @description Setup some base dungeon status
// You can write your code in this editor
/// initialize the player stats
if(instance_number(obj_dungeon_status) > 1) instance_destroy();

name = "unknown";
race = "unknown";
born_gender = "unknown";
age = 0;
hp = 100;
maxhp = hp;
stamina = 100;
maxstamina = stamina;
expr = 0;
maxexpr = 3;
level = 1;
attack = 10;
defense = 100;
magicattack = 10;
magicdefense = 100;
threatlevel = "E";

//dungeon stats
dp = 1000;
maxdp = 1000;

b_dp_regan = true;
dp_regan = 1;
dp_regan_time = room_speed;


//creates the ds_map for each of the inventories of the dungeon
global.dm_creatures = ds_map_create();
global.dm_inventory = ds_map_create();
global.dm_abilities = ds_map_create();
global.dm_skills = noone;
global.dm_knowledges = ds_map_create(); 
global.dm_map = ds_map_create();

//creaturetexts[0] = "None";


draw_set_font(defaultfont);
draw_set_colour(c_white);

//dungeon_ui = scr_dungeon_wave_hud;
//dungeon_mode = scr_dungeon_wave_state;

dungeon_ui = scr_dungeon_survival_hud;
dungeon_mode = scr_dungeon_survival_state;

toggle_camera = true;

//wave control variables
creature_count = 0;
creature_deathcount = 0;
creature_maxcount = 3;
bstop_spawn = false;

next_wave_time = 5;//delay the wave
start_wave = true;
start_next_wave = false;
wave_count = 0;
wave_maxcount = 2;

bfinish_wave = false;
reset_wave = false;

//Placement of size of dungeon floor.
globalvar dung_floor_size;
dung_floor_size[0] = 100;
dung_floor_size[1] = 100;

//Stores the map of the current floor.


//setup tests!
scr_init_skills();
scr_init_items();
scr_init_research();
scr_init_creatures();