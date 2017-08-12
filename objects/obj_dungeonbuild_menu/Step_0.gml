/// @description Insert description here
// You can write your code in this editor
/// select and build mouse click

if (global._ishud)
{
    ///build menu
    if(isbuild){
        //show_debug_message("building...");
        isboundbox = false;
        iscollide = false;
        var xx = display_get_gui_width()/2;
        var yy = display_get_gui_height()/2;
        var screenx = device_mouse_x_to_gui(0);
        var screeny = device_mouse_y_to_gui(0); 
        var id_name = "none";
            
        if(pickid != -1){    
            with(pickid){//object id
                id_name = name;
            }
            if(keyboard_check(vk_delete)){
                with(pickid){
                    instance_destroy();
                }
                pickid = -1;
                //show_debug_message("delete object");
            }
        }
		
		for (var i = 0; i < array_length_1d(buttontabs); i++){
			buttontabs[i].x = xx+(i*144)-(144*5/2);
			buttontabs[i].y = 64;
			buttontabs[i].brender = true;
		}
		
		/*
        //draw text h menu
        for (var i = 0; i < array_length_1d(buildmenu); i++)
        {
            if( (xx+(64*i)+(-16)-112 < screenx ) and screenx < (xx+(64*i)+(+28)-112) and ((32)*2) < screeny and screeny < ((32)*3) ){
                isboundbox = true;
                if(mouse_check_button(mb_left)){
                    //show_debug_message(string(buildmenu[i]));
                    if(buildmenu[i] == "Blocks"){
                        slotlist = tileblock;
                    }
                    if(buildmenu[i] == "Traps"){
                        slotlist = traps;
                    }
                    if(buildmenu[i] == "Creaures"){
                        slotlist = creatures;
                    }
                }
            }
        }
		*/
    
        //check if icon are bound here min and max
        //if(screeny > (4 + yy -64) and screeny < (5*(32+4) + yy -64)){//size and offsets and items
        //if(screenx > 4 and screenx < (32+4) and screeny > 4 and screeny < (5*(32+4))){//size and offsets
        //bottom left
        if(screenx > 4 and screenx < (32+4) and screeny > (4 + yy -64) and screeny < (5*(32+4) + yy -64)){
            //show_debug_message("in bound?");
            isboundbox = true;
            //need to add icon select here to build the dungeon
        }else{
            //show_debug_message("out bound?");   
        }
        
        //clear title or object
        if(screenx > 4 and screenx < (32+4) and screeny > (yy - ((32+4)*4)) and screeny < (yy - (32*3))){    
            //show_debug_message("in bound?");
            if(mouse_check_button(mb_left) == true and alarm[0] <= 0){
                if(selectobject != noone){
                    //selectobject.visible = false;
                    selectobject = noone;
                }
                alarm[0] = room_speed/6;
            }
            isboundbox = true;
        }else{
            //show_debug_message("out bound?");
        }
        
        if(screenx > 4 and screenx < (32+4) and screeny > (yy - ((32+4)*3)) and screeny < (yy - (32*2))){    
            //show_debug_message("in bound?");
            if(mouse_check_button(mb_left) == true and alarm[0] <= 0){
                list_index--;
                alarm[0] = room_speed/6;
            }
            isboundbox = true;
        }else{
            //show_debug_message("out bound?");
        }
        //draw up button
        
        if(screenx > 4 and screenx < (32+4) and screeny > (yy + ((32+4)*(3))) and screeny < (yy + (32*(5)))){    
            //show_debug_message("in bound?");
            if(mouse_check_button(mb_left) == true and alarm[0] <= 0){
                list_index++;
                alarm[0] = room_speed/6;
            }
            isboundbox = true;
        }else{
            //show_debug_message("out bound?");
        }
        //draw down button  
        
        if(screenx > 4 and screenx < (32+4) and screeny > (display_get_gui_height()-32) and screeny < (display_get_gui_height())){    
            //show_debug_message("in bound?");
            if(mouse_check_button(mb_left) == true and alarm[0] <= 0){
                if(issnap){
                    issnap = false;
                }else{
                    issnap = true;
                }
                alarm[0] = room_speed/6;
                //show_debug_message("snap?");
            }
            isboundbox = true;
        }else{
            //show_debug_message("out bound?");
        }
        
        
        // draw icons
        list_count = 0;
        if(list_index <= 0){
            list_index = 0;
        }
        //check if array list max list to not move
        if(array_height_2d(slotlist) <= list_max){
            list_index = 0;
        }else{
            if(list_index > array_height_2d(slotlist) - list_max){
                list_index = array_height_2d(slotlist) - list_max;
            }
        }
        //draw iamge and check if mouse is press left
        for (i = list_index; i < array_height_2d(slotlist); i++){    
            if(list_count >= list_max){
                break;
            }
            if(screenx > 4 and screenx < (32+4) and screeny > (yy - 64 + (32+4)*list_count) and screeny < (yy - 32 + (32+4)*list_count)){    
                if(mouse_check_button(mb_left) == true and alarm[0] <= 0){
                    //show_debug_message(string(slotlist[i,0]));
                    //check if select exist destory
                    if(selectobject == noone){
						show_debug_message("clear select object var...");
                    }else{
                        selectedobject = noone;
                    }
                    
                    //selected object
					//slotlist[ i, 2] = placeholder object for filter type
                    selectobject = slotlist[ i, 2];
					selectindex = i;
                    show_debug_message( string(i) );
                    
                    placeholder = instance_create_layer(-100,-100,"dungeonlayout", slotlist[ i, 2]);
                    
                    show_debug_message( string(placeholder) );
                    //set variables holder item
                    objectissnap = placeholder.issnap;
                    objectobjtype = placeholder.objtype;
                    objectisfixed = placeholder.isfixed;
                    with (placeholder)
                    {
                        instance_destroy();
                    }
                    //selectobject.visible = true;
                    placeobject = slotlist[ i, 3];
                    alarm[0] = room_speed/6;
                }
            }
            list_count++;
        }
        //var xx_p = yy - 64 + 32*0;//top
        //var xx_p = yy - 32 + 32*0;//bottom
        //draw_sprite(spr_up,0,64,xx_p);  
        //if(screenx > 4 and screenx < (32+4) and screeny > (yy - 64 + (32+4)*4) and screeny < (yy - 32 + (32+4)*4)){    
            //show_debug_message("in bound?");
        //}else{
            //show_debug_message("out bound?");
        //}
        
    
        //if(place_empty(mouse_x, mouse_y)){
            //show_debug_message("Hit something");
        //}else{
            //show_debug_message("miss");
        //}
        
        //if(place_meeting(mouse_x, mouse_y, obj_wall)){
            //show_debug_message("Hit something");
        //}else{
            //show_debug_message("notthing");
        //}
        
        //show_debug_message(string(mouse_x)+":"+string(mouse_x));
        //place object
        if((mouse_check_button_pressed(mb_left) == true) and (isboundbox == false )){	
            if(placeobject != noone and selectobject != noone){
                //if(!selectobject.iscollision){
                var gx = mouse_x div sizegrid;
                var gy = mouse_y div sizegrid;
                show_debug_message("place....");
				
				if(objectobjtype == _WALL){
                    
                    var wall = instance_position((gx*sizegrid)+(sizegrid/2),(gy*sizegrid)+(sizegrid/2), obj_wall);
                    var flooring = instance_position((gx*sizegrid)+(sizegrid/2),(gy*sizegrid)+(sizegrid/2), obj_floor);
                    
                    if (wall != noone || flooring != noone)
                    {
						if(wall != noone){
							with(wall){
								instance_destroy();
							}
						}
						
						if(flooring != noone){
							with(flooring){
								instance_destroy();
							}
						}
						//need to check other condtions > to do list
                        instance_create_layer(gx*_CELLWIDTH, gy*_CELLWIDTH,"dungeonlayout", placeobject);
						//show_debug_message("CREATE FLOOR!");
                    }else{
						instance_create_layer(gx*_CELLWIDTH, gy*_CELLWIDTH,"dungeonlayout", placeobject);
					}
                    show_debug_message("Type WALL");
					obj_level_generate_dungeon.alarm[0] = room_speed/5;
                }
				
				if (objectobjtype == _FLOOR)
                {
                    
                    var flooring = instance_position((gx*sizegrid)+(sizegrid/2),(gy*sizegrid)+(sizegrid/2), obj_floor);
					var wall = instance_position((gx*sizegrid)+(sizegrid/2),(gy*sizegrid)+(sizegrid/2), obj_wall);
                    
                    if (flooring != noone)
                    {
                        with (flooring)
                        {
                            instance_destroy();
                        }
                        //instance_create_layer(gx*_CELLWIDTH, gy*_CELLWIDTH,"dungeonlayout", placeobject);
						show_debug_message("CREATE FLOOR!");
                    }
					
					if (wall != noone)
                    {
                        with (wall)
                        {
                            instance_destroy();
                        }
                    }
					//need to check other condtions > to do list
					instance_create_layer(gx*_CELLWIDTH, gy*_CELLWIDTH,"dungeonlayout", placeobject);
					show_debug_message("CREATE FLOOR!");
                    show_debug_message("Type FLOOR");
					obj_level_generate_dungeon.alarm[0] = room_speed/5;
                }
				
				if (objectobjtype == _VOID)
                {
                    
                    var flooring = instance_position((gx*sizegrid)+(sizegrid/2),(gy*sizegrid)+(sizegrid/2), obj_floor);
                    
                    if (flooring != noone)
                    {   
                        var xplace = mouse_x;
                        var yplace = mouse_y;
                        if (objectissnap)
                        {
                            xplace = gx*_CELLWIDTH;
                            yplace = gy*_CELLWIDTH;
                        }
                        
                        var createdObj = instance_create_layer(xplace, yplace,"dungeonlayout", placeobject);
                        if (createdObj.object_index == obj_spawner)
                        {
                            createdObj.monster_summon =  slotlist[ selectindex, 3];
                        }
                    }
                    show_debug_message("Type VOID");
                }
				
				
                /*
                
                    //once place check conditions
                    //check object instance for store and get objects
                    if(instance_exists(obj_level_generate_dungeon))
                    {
                        var gx = mouse_x div sizegrid;
                        var gy = mouse_y div sizegrid;
                        if(objectobjtype == WALL || objectobjtype == FLOOR){
                            //check and assign type of dungeon floor or wall                
                            if(objectobjtype == WALL){
                                //block path
                                mp_grid_add_cell(obj_level_generate_dungeon.grid_path,gx,gy);
                                obj_level_generate_dungeon.grid[# gx,gy] = WALL;
                            }
                            if(objectobjtype == FLOOR){
                                //clear path
                                mp_grid_clear_cell(obj_level_generate_dungeon.grid_path,gx,gy);
                                obj_level_generate_dungeon.grid[# gx,gy] = FLOOR;
                            }
                            //check if object exist on the grid
                            if(obj_level_generate_dungeon.grid_tileobjects[# gx,gy] != noone){
                                //get array grid and destory instance object
                                var _obj = obj_level_generate_dungeon.grid_tileobjects[# gx,gy];
                                with(_obj){
                                    instance_destroy();
                                }
                                //assign grid object and create object         
                                obj_level_generate_dungeon.grid_tileobjects[# gx,gy] = instance_create_layer((gx)*32, (gy)*32,"dungeonlayout", placeobject);
                            }
                            else
                            { 
                                obj_level_generate_dungeon.grid_tileobjects[# gx,gy] = instance_create_layer((gx)*32, (gy)*32,"dungeonlayout", placeobject);
                            }
                            //show_debug_message("place tile?");
                        }
                        //check trap grid
                        if(objectobjtype == TRAP){
                            if(obj_level_generate_dungeon.grid_trapobjects[# gx,gy] != noone){
                                var _obj = obj_level_generate_dungeon.grid_trapobjects[# gx,gy];
                                with(_obj){
                                    instance_destroy();
                                }
                            }
                            //show_debug_message("create traps");
                            obj_level_generate_dungeon.grid_trapobjects[# gx,gy] = instance_create_layer((gx)*CELL_WIDTH, (gy)*CELL_HEIGHT,"dungeonlayout", placeobject);
                        }
                        
                        
                        //need to change the code once figure out the design
                        //if(selectobject.objtype == PLACE){
                        if(objectobjtype == PLACE){
                            if(selectobject.iscollision){
                                //show_debug_message("There is collision!");
                            }else{
                                show_debug_message("Place");
                                var itemplace = noone;
                                if(selectobject.isfixed){//try to center
                                    //show_debug_message("isfixed place item?");
                                    if(issnap){//check if neeb fixed from users for cell
                                        itemplace = instance_create_layer(gx*CELL_WIDTH+CELL_WIDTH/2, gy*CELL_HEIGHT+CELL_HEIGHT/2,"dungeonlayout", placeobject);
                                    }else{//used mouse position for place
                                        itemplace = instance_create_layer(mouse_x,mouse_y,"dungeonlayout", placeobject);
                                    }
                                }else if(selectobject.issnap){//snap to grid
                                    //show_debug_message("snap place item?");
                                     itemplace = instance_create_layer(gx*CELL_WIDTH, gy*CELL_HEIGHT,"dungeonlayout", placeobject);
                                }else{//place any where that is not grid or fixed
                                     //add list place is not grid
                                     //show_debug_message("place item?");
                                     itemplace = instance_create_layer(mouse_x, mouse_y,"dungeonlayout", placeobject);
                                }
                                ds_list_add(obj_level_generate_dungeon.dungeonbjects,itemplace);
                            }
                            //show_debug_message(string(array_length_1d(obj_level_generate_dungeon.objectplaces)));
                            var len = ds_list_size(obj_level_generate_dungeon.dungeonbjects);
                            show_debug_message(string(len));
                        }
                        
                    }
                //}else{
                    //show_debug_message("There is collision!");
                //}
				*/
            }
        }
    }else{
        if(selectobject != noone){
            selectedobject = noone;
        }
		
		for (var i = 0; i < array_length_1d(buttontabs); i++){
			buttontabs[i].brender = false;
		}
    }
}
