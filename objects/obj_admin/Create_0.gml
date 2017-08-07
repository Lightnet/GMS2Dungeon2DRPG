/// @description Insert description here
// You can write your code in this editor
bshow = false;

buttons[0] = instance_create_layer(0,0,"HUD",obj_button);
buttons[0].name = "Thief";

buttons[1] = instance_create_layer(0,0,"HUD",obj_button);
buttons[1].name = "Warrior";

buttons[2] = instance_create_layer(0,0,"HUD",obj_button);
buttons[2].name = "Mage";

buttons[3] = instance_create_layer(0,0,"HUD",obj_button);
buttons[3].name = "Cleric";

buttons[4] = instance_create_layer(0,0,"HUD",obj_button);
buttons[4].name = "Archer";

for(var i = 0; i < array_length_1d(buttons);i++){
	//buttons[i].brender = false;
	buttons[i].x = (128*i) + 8*i;
	buttons[i].width = 128;
}