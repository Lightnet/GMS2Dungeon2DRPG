// save and load test
//var data = ds_list_create();

show_debug_message("save game");

if (file_exists("Save.sav")) file_delete("Saves.sav");
//write file
var saveFile = file_text_open_write("Save.sav");

//===============================================
//Room Index
//===============================================
//write room idx
var SaveRoom = room;
show_debug_message("ROOM:"+string(SaveRoom))
file_text_write_real(saveFile,SaveRoom);
file_text_writeln(saveFile);

//===============================================
//Save Object View
//===============================================
var ds_objview = ds_map_create();

if(instance_exists(obj_view)){
	ds_map_add(ds_objview, "x", obj_view.x);
	ds_map_add(ds_objview, "y", obj_view.y);
	
	ds_map_add(ds_objview, "zoom", obj_view.zoom);
	ds_map_add(ds_objview, "bfollowplayer", obj_view.bfollowplayer);
	ds_map_add(ds_objview, "bcameracontrol", obj_view.bcameracontrol);
	
	ds_map_add(ds_objview, "view_xview", camera_get_view_x(view_camera[0]));
	ds_map_add(ds_objview, "view_yview", camera_get_view_y(view_camera[0]));
	
	//view_xview = camera_get_view_x(view_camera[0]);
	//view_yview = camera_get_view_y(view_camera[0]);
}

var saveobjview = json_encode(ds_objview);
//show_debug_message(saveobjview);
//object view settings
file_text_write_string(saveFile,saveobjview);
file_text_writeln(saveFile);
ds_map_destroy(ds_objview);

//===============================================
//Save Dungeon Status
//===============================================

//show_debug_message("Instances:");

//user data
var ds_user = ds_map_create();
if(instance_exists(obj_dungeon_status)){
	ds_map_add(ds_user, "name", obj_dungeon_status.name);
	ds_map_add(ds_user, "race", obj_dungeon_status.race);
	ds_map_add(ds_user, "gender", obj_dungeon_status.born_gender);

	ds_map_add(ds_user, "date", "00/00/0000");
	ds_map_add(ds_user, "age", obj_dungeon_status.age);
	ds_map_add(ds_user, "rank", obj_dungeon_status.rank);

	ds_map_add(ds_user, "dp", obj_dungeon_status.dp);
	ds_map_add(ds_user, "dp_regan", obj_dungeon_status.dp_regan);

	ds_map_add(ds_user, "level", obj_dungeon_status.level);
	ds_map_add(ds_user, "experience", obj_dungeon_status.experience);
	ds_map_add(ds_user, "maxexperience", obj_dungeon_status.maxexperience);

	ds_map_add(ds_user, "health", obj_dungeon_status.hp);
	ds_map_add(ds_user, "maxhealth", obj_dungeon_status.maxhp);
	ds_map_add(ds_user, "magic", obj_dungeon_status.magic);
	ds_map_add(ds_user, "maxmagic", obj_dungeon_status.maxmagic);
	
	ds_map_add(ds_user, "stamina", obj_dungeon_status.stamina);
	ds_map_add(ds_user, "maxstamina", obj_dungeon_status.maxstamina);

	ds_map_add(ds_user, "attack", obj_dungeon_status.attack);
	ds_map_add(ds_user, "defense", obj_dungeon_status.defense);
	ds_map_add(ds_user, "magicattack", obj_dungeon_status.magicattack);
	ds_map_add(ds_user, "magicdefense", obj_dungeon_status.magicdefense);
	
	ds_map_add_map(ds_user, "titles", obj_dungeon_status.titles);
	
}


ds_user = json_encode(ds_user);
//ds_user = base64_encode(ds_user);

file_text_write_string(saveFile,ds_user);
file_text_writeln(saveFile);
ds_map_destroy(ds_user);

//===============================================
//Save Floor and Wall
//===============================================
//var ds_tilemap = ds_map_create();
//var grid_map = ds_grid_create(64, 64);
//ds_grid_set(grid_map, 0, 0, 1);

var grid_map = ds_grid_create(32, 32);

with all {
	if(obj_wall == object_index){
		//show_debug_message("Found! Wall");
		ds_grid_set(grid_map, x / 32, y / 32, 0);
	}
	
	if(obj_floor == object_index){
		//show_debug_message("Found! Wall");
		ds_grid_set(grid_map, x div 32, y div 32, 1);
	}
}

file_text_write_string(saveFile,ds_grid_write(grid_map));
ds_map_destroy(grid_map);
file_text_writeln(saveFile);


//===============================================
//Room objects
//===============================================

var ds_objects = ds_map_create();
var ds_tmp = noone;
var count = 0;

with all {
	
	if(obj_wall == object_index){
		//show_debug_message("found!");
		ds_tmp = ds_map_create();
		ds_map_add(ds_tmp,"objtype","obj_wall");
	}
	
	if(obj_floor == object_index){
		//show_debug_message("found!");
		ds_tmp = ds_map_create();
		ds_map_add(ds_tmp,"objtype","obj_floor");
	}
	
	if(obj_dungeon_core == object_index){
		//show_debug_message("found!");
		ds_tmp = ds_map_create();
		ds_map_add(ds_tmp,"objtype","obj_dungeon_core");
	}
	
	if(ds_tmp !=noone){
		ds_map_add(ds_tmp,"x",x);
		ds_map_add(ds_tmp,"y",y);
		ds_map_add_map(ds_objects,count,ds_tmp);
		count++;
	}
}

show_debug_message("count:"+string(count));

t_objects = json_encode(ds_objects);

//file_text_write_string(saveFile,ds_grid_write(t_objects));
file_text_write_string(saveFile,t_objects);
ds_map_destroy(ds_objects);
file_text_writeln(saveFile);



/*
//var ds_items = ds_map_create();
var list_items = ds_map_create();

if(instance_exists(obj_user)){
	show_debug_message("ITEMS:");		
	var items = obj_user.items;
	
	//file_text_write_real( saveFile,array_height_2d(items) );
	
	for(var i =0; i < array_height_2d(items);i++){
		show_debug_message("count:"+ string(i));
		show_debug_message("name:"+ items[i,0]);
		
		//var ds_item = ds_list_create();
		//ds_list_add(ds_item, items[i,1]);
		//ds_item = json_encode(ds_item);
		//show_debug_message(ds_item);
		//ds_map_add_list(list_items, "item", ds_item);
		//ds_item[? "stock"] = items[i,1];
		//ds_list_add(list_items, ds_item);
		//ds_map_add(list_items, items[i,0], items[i,1]); //works
		
		var item_map = ds_map_create();
		item_map[? "name"] = items[i,0];
		item_map[? "stock"] = items[i,1];
		
		ds_map_add_map(list_items, items[i,0], item_map);
		
	}
	
	list_items = json_encode(list_items);
	//list_items = base64_encode(list_items);
	file_text_write_string(saveFile,list_items);
	file_text_writeln(saveFile);
	
	ds_map_destroy(list_items);
}
*/

//objects

show_debug_message("End Save Data!");
file_text_close(saveFile);
