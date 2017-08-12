/// @description Insert description here
// You can write your code in this editor

if (global._ishud)
{///build menu
    if(isbuild){
		var cellwidth = CELLWIDTH;
		var cellheight = CELLHEIGHT;
        isboundbox = false;
        iscollide = false;
        var xx = display_get_gui_width()/2;
        var yy = display_get_gui_height()/2;
        var screenx = device_mouse_x_to_gui(0);
        var screeny = device_mouse_y_to_gui(0); 
        //place preview
        if(selectindex != noone){
            //selectobject.visible = true;
            //divide and floor and time
            if(objectissnap){
                //draw_sprite(slotlist[ selectobject, 1], 0, 30, 30);
				//show_debug_message(string(cellwidth));
                //draw_sprite(slotlist[ selectobject, 1], 0, (mouse_x div cellwidth) * 32 , (mouse_y div cellheight) * 32);
				draw_sprite(slotlist[ selectindex, 1], 0, (mouse_x div cellwidth) * 32 , (mouse_y div cellheight) * 32);
                //selectobject.phy_position_x = (mouse_x div CELL_WIDTH)*32;
                //selectobject.phy_position_y = (mouse_y div CELL_HEIGHT)*32;
            }else if(objectisfixed){
                if(issnap){
                    draw_sprite(slotlist[ selectindex, 1], 0, (mouse_x div cellwidth)*32 + cellwidth/2, (mouse_y div cellheight)*32 + cellheight/2 );
                    ///selectobject.phy_position_x = (mouse_x div CELL_WIDTH)*32 + CELL_WIDTH/2;
                   // selectobject.phy_position_y = (mouse_y div CELL_HEIGHT)*32 + CELL_HEIGHT/2;
                }else{
                    draw_sprite(slotlist[ selectindex, 1], 0, mouse_x, mouse_y);
                    ////selectobject.phy_position_x = mouse_x;
                   // selectobject.phy_position_y = mouse_y;
                }
            }else{
                draw_sprite(slotlist[ selectindex, 1], 0, mouse_x, mouse_y);
               /// selectobject.phy_position_x = mouse_x;
               // selectobject.phy_position_y = mouse_y;
            }
        }else{
            //show_debug_message("error object");
        }
    
    }
}

