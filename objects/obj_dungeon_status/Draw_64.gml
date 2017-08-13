/// @description Draw HUD

//Fix when player death and presistent draw.
//show_debug_message(string(g_display_dungeon));   
if(global._ishud){
	if(global._display_dungeon){
        //script_execute(scr_dungeon_hud);
        script_execute(dungeon_ui);
    }
	
	if(bhelpkey){
		script_execute(scr_display_help_key);
	}
}

