/// init macro
#macro CELLWIDTH 32;
#macro CELLHEIGHT 32;
#macro RETURN 0;
#macro NEW_ROOM 1;
#macro LOAD 2;
#macro MOVE 0;
#macro ATTACK 1;
#macro IDLE 2;
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

/// default var only

global._ismenu = true;
global._ishud = true;
global.level_generate = true; //create level default  boolean
global._display_dungeon = true;
global._display_player = false;
global.pathingWidth = room_width div CELLWIDTH;
global.pathingHeight = room_height div CELLHEIGHT;
//global.pathing = mp_grid_create(0, 0, global.pathingWidth, global.pathingHeight, CELL_WIDTH, CELL_HEIGHT);
//global.wallConnections[global.pathingWidth, global.pathingHeight] = 0;
