/// @description Insert description here
// You can write your code in this editor
bshow = false;
bshow_adventure = true;
bshow_dungeon = false;
bshow_map = false;


buttontabs[0] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[0].name = "Adventure";
buttontabs[0].scriptfile = scr_admintabs;
buttontabs[0].arg = 0;


buttontabs[1] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[1].name = "Dungeon";
buttontabs[1].scriptfile = scr_admintabs;
buttontabs[1].arg = 1;

buttontabs[2] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[2].name = "Map";
buttontabs[2].scriptfile = scr_admintabs;
buttontabs[2].arg = 2;

for(var i = 0; i < array_length_1d(buttontabs);i++){
	//buttons[i].brender = false;
	buttontabs[i].x = (160*i) + 8*i;
	buttontabs[i].width = 160;
}

btnadventures[0] = instance_create_layer(0,0,"HUD",obj_button);
btnadventures[0].name = "Party";
btnadventures[0].scriptfile = scr_generate_party;

btnadventures[1] = instance_create_layer(0,0,"HUD",obj_button);
btnadventures[1].name = "Thief";
btnadventures[1].scriptfile = scr_create_adventurer;
btnadventures[1].arg = 0;

btnadventures[2] = instance_create_layer(0,0,"HUD",obj_button);
btnadventures[2].name = "Warrior";
btnadventures[2].scriptfile = scr_create_adventurer;
btnadventures[2].arg = 1;

btnadventures[3] = instance_create_layer(0,0,"HUD",obj_button);
btnadventures[3].name = "Mage";
btnadventures[3].scriptfile = scr_create_adventurer;
btnadventures[3].arg = 2;

btnadventures[4] = instance_create_layer(0,0,"HUD",obj_button);
btnadventures[4].name = "Cleric";
btnadventures[4].scriptfile = scr_create_adventurer;
btnadventures[4].arg = 3;

btnadventures[5] = instance_create_layer(0,0,"HUD",obj_button);
btnadventures[5].name = "Archer";
btnadventures[5].scriptfile = scr_create_adventurer;
btnadventures[5].arg = 4;

for(var i = 0; i < array_length_1d(btnadventures);i++){
	//buttons[i].brender = false;
	btnadventures[i].x = (128*i) + 8*i;
	btnadventures[i].y = 42;
	btnadventures[i].width = 128;
}


dungeonbtns[0] = instance_create_layer(0,0,"HUD",obj_button);
dungeonbtns[0].name = "100k DP";
dungeonbtns[0].scriptfile = scr_dungeon_dp;
dungeonbtns[0].arg = 100000;

dungeonbtns[1] = instance_create_layer(0,0,"HUD",obj_button);
dungeonbtns[1].name = "1 DP REGAN";
dungeonbtns[1].scriptfile = scr_dungeon_dp_regenerate;
dungeonbtns[1].arg = 1;

dungeonbtns[2] = instance_create_layer(0,0,"HUD",obj_button);
dungeonbtns[2].name = "10 DP REGAN";
dungeonbtns[2].scriptfile = scr_dungeon_dp_regenerate;
dungeonbtns[2].arg = 10;

dungeonbtns[3] = instance_create_layer(0,0,"HUD",obj_button);
dungeonbtns[3].name = "100 DP REGAN";
dungeonbtns[3].scriptfile = scr_dungeon_dp_regenerate;
dungeonbtns[3].arg = 100;

for(var i = 0; i < array_length_1d(dungeonbtns);i++){
	//buttons[i].brender = false;
	//dungeonbtns[i].x = (160*i) + 8*i;
	dungeonbtns[i].y = 42 + 32*i + 8*i;
	dungeonbtns[i].width = 256;
}

mapbtns[0] = instance_create_layer(0,0,"HUD",obj_button);
mapbtns[0].name = "Data";
mapbtns[0].scriptfile = scr_update_data;

mapbtns[1] = instance_create_layer(0,0,"HUD",obj_button);
mapbtns[1].name = "Paths";
mapbtns[1].scriptfile = scr_update_paths;

mapbtns[2] = instance_create_layer(0,0,"HUD",obj_button);
mapbtns[2].name = "Tiles";
mapbtns[2].scriptfile = scr_update_tiles;

for(var i = 0; i < array_length_1d(mapbtns);i++){
	//buttons[i].brender = false;
	mapbtns[i].x = (160*i) + 8*i;
	mapbtns[i].y = 42;
	mapbtns[i].width = 160;
}