/// init macro
#macro CELLWIDTH 32;
#macro CELLHEIGHT 32;
#macro RETURN 0;
#macro NEW_ROOM 1;
#macro LOAD 2;

#macro MOVE 0;
#macro ATTACK 1;
#macro IDLE 2;
#macro PATROL 3;
#macro GUARD 4;

#macro RIGHT 0;
#macro UP 1;
#macro LEFT 2;
#macro DOWN 3;

#macro CONTROL_DUNGEON 0;
#macro CONTROL_PLAYER 1;
#macro CONTROL_CUTSCENE 2;
#macro WALL 0;
#macro FLOOR 1;
#macro VOID 2;
#macro TRAP 3;
#macro CREATURE 4;
#macro ADVENTURER 5;

#macro THIEF 0;
#macro WARRIOR 1;
#macro MAGE 2;
#macro CLERIC 3;
#macro ARCHER 4;

global.Adventurers = 0;
global.Adventurer_Current = 0;
global.Adventurer_Counts = 0; // number of current adventure in the dungeon

global.Creatures = 0;
global.Creature_Current = 0;
global.Creature_Counts = 0;
global.Creature_OldCounts = 0;

global.grid_path = noone;

global.Dungeon_Threat_Level = 0;
global.Dungeon_Helper = noone;
global.Dungeon_Map = noone;
global.Dungeon_Path = noone;
global.Dungeon_Time = 0;
global.Dungeon_RaidTime = 0; //Time when party or adventure explore dungeon
global.Dungeon_RNGTime = 0;

global.Dungeon_Upgrading = false; //for kick party for dungeon upgrading
global.level_generate = false;

//debug tools
global.bdisplay_map_path = false;
global.bdisplay_creature_path = false;

/// default var only
global._ismenu = true;
global._ishud = true;
//global.level_generate = true; //create level default  boolean
global._display_dungeon = true;
global._display_player = false;
global.pathingWidth = room_width div CELLWIDTH;
global.pathingHeight = room_height div CELLHEIGHT;
//global.pathing = mp_grid_create(0, 0, global.pathingWidth, global.pathingHeight, CELL_WIDTH, CELL_HEIGHT);
//global.wallConnections[global.pathingWidth, global.pathingHeight] = 0;
