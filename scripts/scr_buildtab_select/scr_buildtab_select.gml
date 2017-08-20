///select dungeon to display
var menu_index = argument0;
show_debug_message(string(menu_index));

if(obj_dungeonbuild_menu.placeholder != noone){
	with(obj_dungeonbuild_menu.placeholder){
		instance_destroy();
	}
}

obj_dungeonbuild_menu.selectindex = noone;

switch(menu_index){
    case 0:
        //obj_dungeonbuild_menu.slotlist = obj_dungeonbuild_menu.tileblock;
		obj_dungeonbuild_menu.menustate = scr_build_blocks_state;
		obj_dungeonbuild_menu.uistate = scr_build_blocks_ui;
		obj_dungeonbuild_menu.drawstate = scr_build_blocks_draw;
        break;
    case 1:
        //obj_dungeonbuild_menu.slotlist = obj_dungeonbuild_menu.traps;
		obj_dungeonbuild_menu.menustate = scr_build_trap_state;
		obj_dungeonbuild_menu.uistate = scr_build_trap_ui;
		obj_dungeonbuild_menu.drawstate = scr_build_trap_draw;
        break;
    case 2:
		//obj_dungeonbuild_menu.slotlist = obj_dungeonbuild_menu.creatures;
		obj_dungeonbuild_menu.menustate = scr_build_creature_state;
		obj_dungeonbuild_menu.uistate = scr_build_creature_ui;
		obj_dungeonbuild_menu.drawstate = scr_build_creature_draw;
        break;
    case 3:
		//obj_dungeonbuild_menu.slotlist = obj_dungeonbuild_menu.tools;
        break;
    case 4:
		//obj_dungeonbuild_menu.slotlist = obj_dungeonbuild_menu.items;
        break;
    default:
        break;
}