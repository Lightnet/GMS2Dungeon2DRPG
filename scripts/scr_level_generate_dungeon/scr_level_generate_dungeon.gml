///setup dungeon base
_WALL = WALL;
_FLOOR = FLOOR;
_CELLWIDTH = CELLWIDTH;
_CELLHEIGHT = CELLWIDTH;

grid_path = noone;

/// initialize dungeon create
//global.level_generate = true;
//check level generate dungeon
if(global.level_generate){
	
	show_debug_message("CREATE DUNGEON TEST!");
	
	
	if(instance_exists(obj_dungeon_status)){
		show_debug_message("obj_dungeon_status");
		if(instance_exists(obj_view)){
			show_debug_message("obj_view");
			//show_debug_message("x:"+string(obj_dungeon_status.ds_objview[? "x"]))
			
			var xview = obj_dungeon_status.ds_objview[? "view_xview"];
			var yview = obj_dungeon_status.ds_objview[? "view_yview"];
			
			camera_set_view_pos(view_camera[0], xview, yview);
			
			
			//obj_view.x = obj_dungeon_status.ds_objview[? "x"];
			//obj_view.y = obj_dungeon_status.ds_objview[? "y"];
			
			//camera_set_view_pos(view_camera[0], obj_dungeon_status.ds_objview[? "x"], obj_dungeon_status.ds_objview[? "y"]);
		}
	}
	
	if(instance_exists(obj_dungeon_status)){
		show_debug_message("Map Grid");
		//show_debug_message(string( obj_save_load.grid_map[# 0,0]));
			
		for(var py = 0; py < 32; py++){
			//var col = "";
			for(var px = 0; px < 32; px++){	
				//col += string(obj_dungeon_status.grid_map[# px,py]);
				if(obj_dungeon_status.grid_map[# px,py] == 1){
					//var o_floor = instance_create_layer(px*32,py*32,"dungeonlayout",obj_floor);
					//show_debug_message("floor");
				}else{
					//var o_wall = instance_create_layer(px*32,py*32,"dungeonlayout",obj_wall);
				}
			}
			//show_debug_message(col);
		}
	}
	var rm_objs = obj_dungeon_status.dungeonlayout;
	var size = ds_map_size(rm_objs) ;
	var key = ds_map_find_first(rm_objs);
	var inobj = noone;
	for (var i = 0; i < size; i++;)
	{
		var obj_data = rm_objs[? key];
		//show_debug_message("x:"+string(obj_data[? "x"]));
		//show_debug_message("objtype:"+string(obj_data[? "objtype"]));
		
		if(obj_data[? "objtype"] == "obj_floor"){
			instance_create_layer(obj_data[? "x"],obj_data[? "y"],"dungeonlayout",obj_floor);
		}
		
		if(obj_data[? "objtype"] == "obj_wall"){
			instance_create_layer(obj_data[? "x"],obj_data[? "y"],"dungeonlayout",obj_wall);
		}
		
		if(obj_data[? "objtype"] == "obj_dungeon_core"){
			instance_create_layer(obj_data[? "x"],obj_data[? "y"],"creatures", obj_dungeon_core);
			//instance_create_layer(obj_data[? "x"],obj_data[? "y"],"creatures",obj_wall);
			//show_debug_message("DUNGEON CORE!");
		}
		
		if(inobj !=noone){
			//inobj.x = obj_data[? "x"];
			//inobj.y = obj_data[? "y"];
		}
		
		
		key = ds_map_find_next(rm_objs, key);
	}
	
	/*
    // resize room
    room_width = (_CELLWIDTH/16) * 720;
    room_height = (_CELLHEIGHT/16) * 720;
    
    //set the grid and height
    var width = room_width div _CELLWIDTH;
    var height = room_height div _CELLHEIGHT;
    
    //create the grid FLOOR,WALL,VOID
    grid = ds_grid_create(width, height);
    
    //create pathfinding grid
    grid_path = mp_grid_create(0,0,width,height,_CELLWIDTH,_CELLHEIGHT);
	
	global.grid_path = grid_path;
    
    //create object grid instance object
    grid_tileobjects = ds_grid_create(width, height);
    
    //this place traps grid base
    grid_trapobjects = ds_grid_create(width, height);
    ds_grid_set_region(grid_trapobjects, 0, 0, width - 1, height - 1, noone);
    //place item objects place in dungeon
    dungeonbjects = ds_list_create();    
    //place item objects loot item
    itemobjects = ds_list_create();
    //show_debug_message("dasdasdasdasd");
    
    //fill the grid with the void
    ds_grid_set_region(grid, 0, 0, width - 1, height - 1, _WALL);
    
    // randomize the world
    randomize();
    
    //create the controller in the center of the grid
    var cx = width div 2;
    var cy = height div 2;
    
    //create the player
    //instance_create((cx*CELL_WIDTH)+(CELL_WIDTH/2),(cy*CELL_HEIGHT)+(CELL_HEIGHT/2), obj_dungeon_core);
    instance_create_layer((cx*_CELLWIDTH),(cy*_CELLHEIGHT),"dungeonlayout", obj_dungeon_core);
    
    //floor
    grid[# cx, cy] = _FLOOR; //center 
    grid[# cx-1, cy] = _FLOOR; //left
    grid[# cx-1, cy-1] = _FLOOR;//left top
    grid[# cx, cy-1] = _FLOOR; //top
    grid[# cx+1, cy-1] = _FLOOR;//top right
    grid[# cx+1, cy] = _FLOOR;//right
    grid[# cx+1, cy+1] = _FLOOR;//bottom right
    grid[# cx, cy+1] = _FLOOR;//bottom
    grid[# cx-1, cy+1] = _FLOOR;//bottom left
    
    //create instance object.
    var t = current_time;
    show_debug_message(current_time);
    for(var yy = 1;yy < height - 1;yy++){
        for(var xx = 1;xx < width - 1;xx++){
            if(grid[# xx,yy] == _FLOOR){
                var _floor = instance_create_layer(xx*_CELLWIDTH,yy*_CELLHEIGHT,"dungeonlayout", obj_floor);
                grid_tileobjects[# xx, yy] = _floor;
            }else{
                //wall or no go path
                mp_grid_add_cell(grid_path, xx, yy);
            }
            if(grid[# xx,yy] == _WALL){
                var _wall = instance_create_layer(xx*_CELLWIDTH,yy*_CELLHEIGHT,"dungeonlayout", obj_wall);
                grid_tileobjects[# xx, yy] = _wall;            
            }
        }
    }
    show_debug_message(current_time);
    show_debug_message(current_time-t);
	*/
    //show_debug_message(string(grid));
}else{
	/*
	//set the grid and height
    var width = room_width div _CELLWIDTH;
    var height = room_height div _CELLHEIGHT;
    //create the grid FLOOR,WALL,VOID
    grid = ds_grid_create(width, height);
    //create pathfinding grid
    grid_path = mp_grid_create(0,0,width,height,_CELLWIDTH,_CELLHEIGHT);
	global.grid_path = grid_path;
	*/
}
