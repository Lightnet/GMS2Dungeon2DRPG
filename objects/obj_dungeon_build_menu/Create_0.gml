/// @description setup build menu
// You can write your code in this editor

_WALL = WALL;
_FLOOR = FLOOR;
_VOID = VOID;
_TRAP = TRAP;
_CREATURE = CREATURE;

_CELLWIDTH = CELLWIDTH;
_CELLHEIGHT = CELLHEIGHT;
				
/// initialize build
isbuild = false;

//array_create()
isboundbox = false;
issnap = true;
sizegrid = 32;
objectissnap = false;
objectobjtype = VOID;
objectisfixed = false;

selectobject = noone;
selectindex = noone;
placeobject = noone;
placeholder = noone;

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

var xx = display_get_gui_width()/2;

//display name
scr_init_tileblocks();
scr_init_traps();
scr_init_creature_build();
scr_init_tools_builds();
scr_init_items_builds();

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
buttontabs[2].name = "Creatures";
buttontabs[2].width = 144;
buttontabs[2].brender = false;
buttontabs[2].scriptfile = scr_buildtab_select;
buttontabs[2].arg = 2;

buttontabs[3] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[3].name = "Tools";
buttontabs[3].width = 144;
buttontabs[3].brender = false;
buttontabs[3].scriptfile = scr_buildtab_select;
buttontabs[3].arg = 3;

buttontabs[4] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[4].name = "Items";
buttontabs[4].width = 144;
buttontabs[4].brender = false;
buttontabs[4].scriptfile = scr_buildtab_select;
buttontabs[4].arg = 4;

for (var i = 0; i < array_length_1d(buttontabs); i++){
	buttontabs[i].width = 155;
	buttontabs[i].x = xx+(i*160)-(160*5/2);
	buttontabs[i].y = 64;
}

menustate = noone;
uistate = noone;
drawstate = noone;

//menustate = scr_build_blocks_state;
//uistate = scr_build_blocks_ui;
uistate = scr_dungeon_build_menu;
//drawstate = scr_build_blocks_draw;
