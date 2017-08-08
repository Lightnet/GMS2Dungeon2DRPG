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
	buttontabs[i].x = (128*i) + 8*i;
	buttontabs[i].width = 128;
}


buttons[0] = instance_create_layer(0,0,"HUD",obj_button);
buttons[0].name = "Party";
buttons[0].scriptfile = scr_generate_party;

buttons[1] = instance_create_layer(0,0,"HUD",obj_button);
buttons[1].name = "Thief";
buttons[1].scriptfile = scr_create_adventurer;
buttons[1].arg = 0;


buttons[2] = instance_create_layer(0,0,"HUD",obj_button);
buttons[2].name = "Warrior";
buttons[2].scriptfile = scr_create_adventurer;
buttons[2].arg = 1;

buttons[3] = instance_create_layer(0,0,"HUD",obj_button);
buttons[3].name = "Mage";
buttons[3].scriptfile = scr_create_adventurer;
buttons[3].arg = 2;

buttons[4] = instance_create_layer(0,0,"HUD",obj_button);
buttons[4].name = "Cleric";
buttons[4].scriptfile = scr_create_adventurer;
buttons[4].arg = 3;

buttons[5] = instance_create_layer(0,0,"HUD",obj_button);
buttons[5].name = "Archer";
buttons[5].scriptfile = scr_create_adventurer;
buttons[5].arg = 4;

for(var i = 0; i < array_length_1d(buttons);i++){
	//buttons[i].brender = false;
	buttons[i].x = (128*i) + 8*i;
	buttons[i].y = 42;
	buttons[i].width = 128;
}