// save and load test
//var data = ds_list_create();

show_debug_message("save game");


if (file_exists("Save.sav")) file_delete("Saves.sav");
//write file
var saveFile = file_text_open_write("Save.sav");
//write room idx
var SaveRoom = room;
show_debug_message("ROOM:"+string(SaveRoom))
file_text_write_real(saveFile,SaveRoom);
file_text_writeln(saveFile);

show_debug_message("Instances:");

//user data
var ds_user = ds_map_create();
ds_map_add(ds_user, "name", "Guest");
ds_map_add(ds_user, "race", "Dungeon");
ds_map_add(ds_user, "gender", "Male");

ds_map_add(ds_user, "date", "00/00/0000");
ds_map_add(ds_user, "age", 0);
ds_map_add(ds_user, "threatlevel", 999);

ds_map_add(ds_user, "dp", 2000);
ds_map_add(ds_user, "dp_regan", 10);

ds_map_add(ds_user, "level", 999);
ds_map_add(ds_user, "experience", 999);
ds_map_add(ds_user, "maxexperience", 999);

ds_map_add(ds_user, "health", 999);
ds_map_add(ds_user, "maxhealth", 999);
ds_map_add(ds_user, "magic", 999);
ds_map_add(ds_user, "maxmagic", 999);

ds_map_add(ds_user, "attack", 999);
ds_map_add(ds_user, "defense", 999);
ds_map_add(ds_user, "magicattack", 999);
ds_map_add(ds_user, "magicdefense", 999);


ds_user = json_encode(ds_user);
//ds_user = base64_encode(ds_user);

file_text_write_string(saveFile,ds_user);
file_text_writeln(saveFile);

ds_map_destroy(ds_user);
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
