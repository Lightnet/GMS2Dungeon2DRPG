


show_debug_message("load game");

var grid_map = noone;

if(file_exists("Save.sav")){
	show_debug_message("LOADING DATA SAVE!");
	var LoadFile = file_text_open_read("Save.sav");
	var LoadedRoom = file_text_read_real(LoadFile);
	file_text_readln(LoadFile);
	//file_text_close(LoadFile);
	
	show_debug_message("Room:"+string(LoadedRoom));
	
	//==============================================
	// user data
	//==============================================
	//var playername = file_text_read_string(LoadFile);
	//show_debug_message("playername:"+string(playername));
	
	var user_data = ds_map_create();
	//user_data = json_encode(user_data);	
	var t_user = file_text_read_string(LoadFile);
	file_text_readln(LoadFile);
	show_debug_message("t_user:" + t_user);
	user_data = json_decode(t_user);
	//user_data = base64_decode(user_data);
	
	//show_debug_message(string(t_user));
	//ds_map_read(user_data, t_user);
	//show_debug_message(string(user_data[? "name"]));
	show_debug_message(string(user_data[? "name"]));
	if(instance_exists(obj_dungeon_status)){
		obj_dungeon_status.name = user_data[? "name"];
		obj_dungeon_status.race = user_data[? "race"];
		obj_dungeon_status.born_gender = user_data[? "gender"];
		
		obj_dungeon_status.date = user_data[? "date"];
		obj_dungeon_status.age = user_data[? "age"];
		obj_dungeon_status.rank = user_data[? "rank"];
		
		obj_dungeon_status.dp = user_data[? "dp"];
		obj_dungeon_status.dp_regan = user_data[? "dp_regan"];
		
		obj_dungeon_status.level = user_data[? "level"];
		obj_dungeon_status.experience = user_data[? "experience"];
		obj_dungeon_status.maxexperience = user_data[? "maxexperience"];
		
		obj_dungeon_status.hp = user_data[? "health"];
		obj_dungeon_status.maxhp = user_data[? "maxhealth"];
		obj_dungeon_status.magic = user_data[? "magic"];
		obj_dungeon_status.maxmagic = user_data[? "maxmagic"];
		
		obj_dungeon_status.stamina = user_data[? "stamina"];
		obj_dungeon_status.maxstamina = user_data[? "maxstamina"];
		
		obj_dungeon_status.attack = user_data[? "attack"];
		obj_dungeon_status.defense = user_data[? "defense"];
		obj_dungeon_status.magicattack = user_data[? "magicattack"];
		obj_dungeon_status.magicdefense = user_data[? "magicdefense"];
		
		obj_dungeon_status.titles = user_data[? "titles"];
	}
	
	//grid_map = ds_grid_create(64, 64);
	var t_map = file_text_read_string(LoadFile);
	file_text_readln(LoadFile);
	
	show_debug_message("t_map:" + string(t_map));
	
	grid_map = ds_grid_create(64, 64);
	
	ds_grid_read(grid_map, t_map);
	
	show_debug_message(string(grid_map[# 0,0]))
	
	
	
	
	
	
	
	
	
	
	
	
	
	//var ItemCount = file_text_read_real(LoadFile);
	
	//==============================================
	// item data
	//==============================================
	/*
	
	var t_items = file_text_read_string(LoadFile);
	file_text_readln(LoadFile);
	show_debug_message("Items string:" + t_items);
	var item_data = json_decode(t_items);
	show_debug_message("Items:" + string(ds_map_size(item_data)));
	
	//show_debug_message("Name"+ item_data[? "meat"]);
	
	var key = ds_map_find_first(item_data);
	
	show_debug_message("KEY:"+ key);
	
	var size = ds_map_size(item_data);
	
	for (var i = 0; i < size-1; i++;)
	{
      key = ds_map_find_next(item_data, key);
	  if(key != noone){
		show_debug_message("KEY:"+ string(key));
	  }
	}
	
	//show_debug_message(item_data[? "meat"]);
	//var item_data = item_data[? "meat"];
	//show_debug_message(item_data[? "name"]);
	*/
	
	
	file_text_close(LoadFile);
}else{
//do nothing	
}
