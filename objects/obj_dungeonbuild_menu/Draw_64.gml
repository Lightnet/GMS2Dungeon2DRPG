/// @description Insert description here
// You can write your code in this editor
if(global._ishud){
    //script_execute(scr_dungeon_build_menu);///build menu
    if(isbuild){
        isboundbox = false;
        iscollide = false;
        var xx = display_get_gui_width()/2;
        var yy = display_get_gui_height()/2;
        var screenx = device_mouse_x_to_gui(0);
        var screeny = device_mouse_y_to_gui(0);
        draw_text(xx-64,16,"BUILD MODE");
        var id_name = "none";
              
        draw_text(xx-64,32,"Select: "+id_name);
        draw_set_halign(fa_left);
        //for (var i = 0; i < array_length_1d(buildmenu); i++)
        //{
            //draw_text(xx+(i*128)-128-128, 64, string( buildmenu[i] ));
        //}
        //draw text h menu
    
        //check if icon are bound here min and max
        //if(screeny > (4 + yy -64) and screeny < (5*(32+4) + yy -64)){//size and offsets and items
        //if(screenx > 4 and screenx < (32+4) and screeny > 4 and screeny < (5*(32+4))){//size and offsets
        //bottom left
        if(issnap){
            draw_sprite(spr_grid_on,0,4,display_get_gui_height()-32);
        }else{
            draw_sprite(spr_grid_off,0,4,display_get_gui_height()-32);
        }
        
        //clear title or object
        draw_sprite(spr_clear_obj,0,0,(yy - ((32+4)*4)));
        
        //draw up button
        draw_sprite(spr_up,0,4,yy+((32+4)*-1)-64); 
    
        //draw down button
        draw_sprite(spr_down,0,4,yy+((32+4)*5)-64);     
                
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
            }
            draw_text(48,yy+((32+4)*list_count)-64,slotlist[ i, 0]);
            if(slotlist[ i, 1] != noone){
                var xOffset = sprite_get_xoffset(slotlist[ i, 1]);
                var yOffset = sprite_get_yoffset(slotlist[ i, 1]);
                draw_sprite(slotlist[ i, 1],0,4+xOffset,yy+((32+4)*list_count)-64+yOffset);
            }else{
                draw_sprite(spr_slot,0,4,yy+((32+4)*list_count)-64);
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
        
    }
}