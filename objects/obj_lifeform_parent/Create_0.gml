/// @description Insert description here
// You can write your code in this editor
///initialize the lifeform

//check if physics is able to set rotation to fixed
if(object_get_physics(object_index)){
	phy_fixed_rotation = true;
}

//base info creature status
hp = 3;
maxhp = 3;
mp = 0;
maxmp = mp;

level = 0;
experience = 0;
nextexperience = 10;

dpconvertrate = 10;//hp + mp / dpconvertrate = dp

//battle settings
attack = 0;
defense = 0;
magicattack = 0;
magicdefense = 0;

//paramse
//name = "testname";
bsingle_select = false;
teamid = -1;
owner = "";
creator = "";

monsterTier = 1;//monster tier or rank?
name = "None";//creature name
spd = 1; //movment speed? not set yet


//object type for creature, adventure, dungeon blocks, and other
issnap = false;
isfixed = false;
objtype = VOID; //CREATURE, ADVENTURER, WALL, FLOOR, TRAP

//health bar
bdisplay_healthbar = true;
bdisplay_hungerbar = true;
hb_offset_x = 0;
hb_offset_y = 0;
hb_width = 32;
hb_height = 4;


//target
target = noone;
commandTarget = noone;
command = commands.none;
target_x = -1;
target_y = -1;
follow_distance = 4;

//path
followTarget = instance_create_layer(x,y,"targets",obj_follow_target);
followTarget.owner = self;
point = 0;
path_done = true;
bpath_start = false;
path = path_add();

//loyalty
loyalty = 50;
loyaltyMap = ds_map_create();
loyaltyMap[? commands.move] = 25;
loyaltyMap[? commands.attack] = 50;
loyaltyMap[? commands.mine] = 5;


//hunger
maxHunger = 100;
hunger = maxHunger;
hungerDrop = maxHunger / 180 / room_speed;
mildHunger = 0.9;
warningHunger = 0.6;
criticalHunger = 0.3;

//faction
//var inst;
faction = factions.neutral;
baseFaction = factions.neutral;
mineStrength = 10;

//element
//inst = instance_position(x, y, obj_place);
//if inst != noone {
    //element = inst.element;
    //image_blend = ds_map_find_value(global.element_colour, element);
//} else {
    element = elements.none;
//}