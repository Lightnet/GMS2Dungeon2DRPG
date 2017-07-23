/// @description Draw HUD
// You can write your code in this editor


//Fix when player death and presistent draw.
//show_debug_message(string(g_display_dungeon));   
if(global._display_dungeon){
    if(global._ishud){
        //script_execute(scr_dungeon_hud);
        script_execute(dungeon_ui);
    }
}