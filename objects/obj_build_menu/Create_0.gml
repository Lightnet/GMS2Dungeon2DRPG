/// @description setup build menu
// You can write your code in this editor
/// initialize build
isbuild = false;

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

traps[0,0] = "Box";
traps[0,1] = spr_box;
traps[0,2] = obj_box;
traps[0,3] = obj_box;

traps[1,0] = "Spike";
traps[1,1] = spr_spike;
traps[1,2] = obj_spike;
traps[1,3] = obj_spike;

tools[0,0] = "Spike";
tools[0,1] = spr_spike;
tools[0,2] = obj_spike;
tools[0,3] = obj_spike;

items[0,0] = "Spike";
items[0,1] = spr_spike;
items[0,2] = obj_spike;
items[0,3] = obj_spike;

creatures[0,0] = "Slime"
creatures[0,1] = spr_slime
creatures[0,2] = obj_monster_slime
creatures[0,3] = obj_monster_slime

creatures[1,0] = "Slime Spawner"
creatures[1,1] = spr_spawner
creatures[1,2] = obj_spawner
creatures[1,3] = obj_monster_slime

slotlist = tileblock;


buttontabs[0] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[0].name = "Blocks";
buttontabs[0].width = 144;
buttontabs[0].brender = false;
buttontabs[0].scriptfile = scr_buildtab_select;
buttontabs[0].arg = 0;

buttontabs[1] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[1].name = "Traps";
buttontabs[1].width = 144;
buttontabs[1].brender = false;
buttontabs[1].scriptfile = scr_buildtab_select;
buttontabs[1].arg = 1;

buttontabs[2] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[2].name = "Tools";
buttontabs[2].width = 144;
buttontabs[2].brender = false;
buttontabs[2].scriptfile = scr_buildtab_select;
buttontabs[2].arg = 2;

buttontabs[3] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[3].name = "Items";
buttontabs[3].width = 144;
buttontabs[3].brender = false;
buttontabs[3].scriptfile = scr_buildtab_select;
buttontabs[3].arg = 3;

buttontabs[4] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[4].name = "Creaures";
buttontabs[4].width = 144;
buttontabs[4].brender = false;
buttontabs[4].scriptfile = scr_buildtab_select;
buttontabs[4].arg = 4;