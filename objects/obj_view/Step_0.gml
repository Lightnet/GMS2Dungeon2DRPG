/// @description Insert description here
// You can write your code in this editor
///move 10% toward the player
// current += (target - current) * 0.1;

if(bfollowplayer){
    if(instance_exists(obj_player)){
        //fixed view port to update
        view_xview[0] = x - view_wview / 2;
        view_yview[0] = y - view_hview / 2;
        //add lag move here
        x += (obj_player.x - x) * 0.1;
        y += (obj_player.y - y) * 0.1;
    }
}

//make sure the right click hold move doesn't move if the position is same else move pan
if(mouse_check_button_pressed(mb_right)){
    if(ispress_right == false){
        selectbox1_x = mouse_x;
        selectbox1_y = mouse_y;
        ispress_right = true;    
    }
}

if(mouse_check_button_released(mb_right)){
    ispress_right = false;  
}

if(ispress_right){
    selectbox2_x = mouse_x;
    selectbox2_y = mouse_y;
    if(selectbox1_x == selectbox2_x and selectbox1_y == selectbox2_y){
        //show_debug_message("do nothing");
        exit;
    }else{
        //show_debug_message("move?");    
    }
}

if(bcameracontrol){
    ///zoom
    if(mouse_wheel_up()){
        zoom = max(0.1,zoom - 0.10);    
    }
    if (mouse_wheel_down()){
        zoom +=0.10;   
    }
    
    //default view port init and sacle to 1
    view_wview[0] = 320 * zoom;
    view_hview[0] = 240 * zoom;
    
    // This sets it up so that the camera is exactly in the middle of the screen at all times, regardless of zoom.
    view_xview[0] = x - view_wview / 2;
    view_yview[0] = y - view_hview / 2;
    //panning view port
    speed = 0;
    //if (mouse_check_button(mb_middle))
    {
        if (mouse_x > x + (0.5*view_wview) - 10 || mouse_x < x - (0.5*view_wview) + 10 || mouse_y > y + (0.5*view_hview) - 10 || mouse_y < y - (0.5*view_hview) + 10)
        {
            // Points towards the mouse
            direction = point_direction(x, y, mouse_x, mouse_y)
            // Finds the distance from the camera object to the mouse, then divides it by (10 * zoom) so that the camera pan speed stays reasonable
            speed = distance_to_point(mouse_x, mouse_y) / (10 * zoom)
        }
        if(mouse_x > x + (0.5*view_wview))
        {
            display_mouse_set(x + (0.5*view_wview), mouse_y);
        }
        if(mouse_x < x - (0.5*view_wview))
        {
            display_mouse_set(x - (0.5*view_wview), mouse_y);
        }
        if(mouse_y > y + (0.5*view_hview))
        {
            display_mouse_set(mouse_x, y + (0.5*view_hview));
        }
        if(mouse_y < y - (0.5*view_hview))
        {
            display_mouse_set(mouse_x, y - (0.5*view_hview));
        }
    }
    //else{ speed = 0};
    x += lengthdir_x(speed,direction);
    y += lengthdir_y(speed,direction);
}