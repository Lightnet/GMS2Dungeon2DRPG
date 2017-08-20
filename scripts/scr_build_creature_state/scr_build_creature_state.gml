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
			buttontabs[i].brender = true;
		}
		
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
        if(array_height_2d(creatures) <= list_max){
            list_index = 0;
        }else{
            if(list_index > array_height_2d(creatures) - list_max){
                list_index = array_height_2d(creatures) - list_max;
            }
        }
        //draw iamge and check if mouse is press left
        for (i = list_index; i < array_height_2d(creatures); i++){    
            if(list_count >= list_max){
                break;
            }
            if(screenx > 4 and screenx < (32+4) and screeny > (yy - 64 + (32+4)*list_count) and screeny < (yy - 32 + (32+4)*list_count)){    
                if(mouse_check_button(mb_left) == true and alarm[0] <= 0){
                    //show_debug_message(string(creatures[i,0]));
                    //check if select exist destory
                    if(selectobject == noone){
						show_debug_message("clear select object var...");
                    }else{
                        selectedobject = noone;
                    }
                    
                    //selected object
					//creatures[ i, 2] = placeholder object for filter type
                    selectobject = creatures[ i, 2];
					selectindex = i;
                    show_debug_message( string(i) );
                    
                    placeholder = instance_create_layer(-100,-100,"dungeonlayout", creatures[ i, 2]);
                    
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
                    placeobject = creatures[ i, 3];
                    alarm[0] = room_speed/6;
                }
            }
            list_count++;
        }
        
        //place object
        if((mouse_check_button_pressed(mb_left) == true) and (isboundbox == false )){	
            if(placeobject != noone and selectobject != noone){
                //if(!selectobject.iscollision){
                var gx = mouse_x div sizegrid;
                var gy = mouse_y div sizegrid;
				//var gx = mouse_x;
				//var gy = mouse_y;
                //show_debug_message("place....");
				
				if (objectobjtype == _CREATURE)
                {
                    
                    var _floor = instance_position((gx*sizegrid)+(sizegrid/2),(gy*sizegrid)+(sizegrid/2), obj_floor);
                    
                    if (_floor != noone)
                    {
						//instance_create_layer(gx*_CELLWIDTH, gy*_CELLWIDTH,"creatures", placeobject);
						instance_create_layer(mouse_x, mouse_y,"creatures", placeobject);
						show_debug_message("place....");
                    }
					
					//need to check other condtions > to do list
                }
				
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