/// @description Insert description here
// You can write your code in this editor
/// control the stats
//if(hp < 0){
//    hp = 0;
//}

//stamina regen
//if( stamina < maxstamina && alarm[0] == -1){
//    stamina++;
//}

if(b_dp_regan){
	if(alarm[11] <= 0){
		alarm[11] = dp_regan_time;
	}
}

//dungeon reset
if(reset_wave){    
    hp = 5;
    maxhp = hp;
    stamina = 10;
    maxstamina = stamina;
    expr = 0;
    maxexpr = 3;
    level = 1;
    attack = 1;    
    //wave reset
    creature_count = 0;
    creature_deathcount = 0;
    creature_maxcount = 3;
    bstop_spawn = false;
    
    next_wave_time = 5;//delay the wave
    start_wave = true;
    start_next_wave = false;
    wave_count = 0;
    wave_maxcount = 2;
    reset_wave = false;
}

//pause the game
if(obj_input.dungeonmenu_key){
    if(instance_exists(obj_dungeon_menu)){
        if(obj_dungeon_menu.bdisplay){
            obj_dungeon_menu.bdisplay = false;
        }else{
            obj_dungeon_menu.bdisplay = true;
        }
    }
}

if(obj_input.f2_key){
    //scr_getcreatures();
	if(alarm[0] <= 0){
		//scr_roomobjects();
		//scr_getcreaturescount();
		//scr_getadventurercount();
		if(instance_exists(obj_admin)){
			if(obj_admin.bshow){
				obj_admin.bshow = false;
			}else{
				obj_admin.bshow = true;
			}
		}
		alarm[0] = room_speed / 6;
	}
}

if(obj_input.help_key){
	bhelpkey = true;
}else{
	bhelpkey = false;
}


//make sure game dungeon game mode is set to it.
script_execute(dungeon_mode);