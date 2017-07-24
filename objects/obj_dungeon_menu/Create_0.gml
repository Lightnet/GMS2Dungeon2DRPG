/// @description Insert description here
// You can write your code in this editor
title = "Dungeon Menu!";

option[0] = "Status";
option[1] = "Creatures";
option[2] = "Abilities";
option[3] = "Research";
option[4] = "Items";

status = noone;

//status[0] = "Name:";
//status[1] = "Gender:";
//status[2] = "Race:";
//status[3] = "Titles:";

status_index = 0;

//menu index
menu_index = 0;
bdisplay = false;

currentmenu = scr_status_menu;
current_state = scr_dungeon_menu_state;

helpkeys[0] = "Dungeon Keys";
helpkeys[1] = "Tab Key | Camera Toggle";
helpkeys[2] = "B | Build Menu";
helpkeys[3] = "A | Status Menu";
helpkeys[4] = "Command Mode";
helpkeys[5] = "Left Mouse | Select Select Unit";
helpkeys[6] = "Right Mouse | Move Unit";



buttontabs[0] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[0].name = "Status";
buttontabs[0].width = 150;
buttontabs[0].scriptfile = scr_dungeontab_select;
buttontabs[0].arg = 0;

buttontabs[1] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[1].name = "Creatures";
buttontabs[1].width = 150;
buttontabs[1].scriptfile = scr_dungeontab_select;
buttontabs[1].arg = 1;

buttontabs[2] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[2].name = "Abilities";
buttontabs[2].width = 150;
buttontabs[2].scriptfile = scr_dungeontab_select;
buttontabs[2].arg = 2;

buttontabs[3] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[3].name = "Research";
buttontabs[3].width = 150;
buttontabs[3].scriptfile = scr_dungeontab_select;
buttontabs[3].arg = 3;

buttontabs[4] = instance_create_layer(0,0,"HUD",obj_button);
buttontabs[4].name = "Items";
buttontabs[4].width = 150;
buttontabs[4].scriptfile = scr_dungeontab_select;
buttontabs[4].arg = 4;