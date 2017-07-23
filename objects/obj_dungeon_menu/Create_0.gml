/// @description Insert description here
// You can write your code in this editor
title = "Dungeon Menu!";

option[0] = "Status";
option[1] = "Creatures";
option[2] = "Abilities";
option[3] = "Research";
option[4] = "Items";

status[0] = "Name:";
status[1] = "Gender:";
status[2] = "Race:";
status[3] = "Titles:";

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
