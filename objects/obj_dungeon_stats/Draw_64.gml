/// @description Insert description here
// You can write your code in this editor
/// draw the hud
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;

//Fix when player death and presistent draw.
//show_debug_message(string(g_display_dungeon));   
if(global._display_dungeon){
    if(global._ishud){
        draw_set_colour(c_white);
        draw_set_halign(fa_left);
        draw_text(4,4, "Camera[Tab]:" + string(toggle_camera) + " Camera Pan:[Right Mouse], Camera zoom:[Wheel]");
        draw_text(4,16+4, "Dungeon Menu[A]");
        draw_text(xx,0, "Build Mode[B]");
        script_execute(dungeon_ui);
        draw_set_colour(c_white);
    }
}