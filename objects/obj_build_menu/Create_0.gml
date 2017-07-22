/// @description Insert description here
// You can write your code in this editor
/// initialize build
isbuild = false;

buildmenu[0] = "Blocks";
buildmenu[1] = "Traps";
buildmenu[2] = "Tools";
buildmenu[3] = "Items";
buildmenu[4] = "Creaures";

isboundbox = false;
issnap = true;
sizegrid = 32;
objectissnap = false;
objectobjtype = VOID;
objectisfixed = false;

selectobject = -1;
placeobject = noone;

//build options
list_count = 0;
list_index = 0;
list_max = 5;
iscollide = false;

istile = true;
isobject = false;

pickobject = noone;//pick object in the room
pickid = -1;

slotlist = noone;// ds_grid_create(0,4);

//display name

tileblock[0, 0] = "Wall";
tileblock[0, 1] = spr_wall;
tileblock[0, 2] = obj_wall;
tileblock[0, 3] = obj_wall;

tileblock[1, 0] = "Floor";
tileblock[1, 1] = spr_floor;
tileblock[1, 2] = obj_floor;
tileblock[1, 3] = obj_floor;

tileblock[2, 0] = "Dirt";
tileblock[2, 1] = spr_dirt;
tileblock[2, 2] = obj_dirt;
tileblock[2, 3] = obj_dirt;

tileblock[3, 0] = "Rock";
tileblock[3, 1] = spr_rock;
tileblock[3, 2] = obj_rock;
tileblock[3, 3] = obj_rock;

tileblock[4, 0] = "Sand";
tileblock[4, 1] = spr_sand;
tileblock[4, 2] = obj_sand;
tileblock[4, 3] = obj_sand;

tileblock[5, 0] = "Water";
tileblock[5, 1] = spr_water;
tileblock[5, 2] = obj_water;
tileblock[5, 3] = obj_water;

tileblock[6, 0] = "Lava";
tileblock[6, 1] = spr_lava;
tileblock[6, 2] = obj_lava;
tileblock[6, 3] = obj_lava;
/*
traps[0,0] = "Box";
traps[0,1] = spr_box_icon;
traps[0,2] = obj_box;
traps[0,3] = obj_box;

traps[1,0] = "Spike";
traps[1,1] = spr_spike;
traps[1,2] = obj_spike;
traps[1,3] = obj_spike;

creatures[0,0] = "Slime"
creatures[0,1] = basic_slime
creatures[0,2] = obj_monster_slime
creatures[0,3] = obj_monster_slime

creatures[1,0] = "Slime Spawner"
creatures[1,1] = spr_spawner
creatures[1,2] = obj_spawner
creatures[1,3] = obj_monster_slime
*/
slotlist = tileblock;
