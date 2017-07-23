///select dungeon to display
var menu_index = argument0;
show_debug_message(string(menu_index));
switch(menu_index){
    case 0:
        obj_build_menu.slotlist = obj_build_menu.tileblock;
        break;
    case 1:
        obj_build_menu.slotlist = obj_build_menu.traps;
        break;
    case 2:
        obj_build_menu.slotlist = obj_build_menu.tools;
        break;
    case 3:
        obj_build_menu.slotlist = obj_build_menu.items;
        break;
    case 4:
        obj_build_menu.slotlist = obj_build_menu.creatures;
        break;
    default:
        break;
}