/// @description Insert description here
// You can write your code in this editor
/// camera move around
zoom = 1;
panspeed = 10;
movespeed = 20;
bfollowplayer = false;
bcameracontrol = true;

drag_x = 0;
drag_y = 0;

// move to player
if(instance_exists(obj_player)){
    x = obj_player.x;
    y = obj_player.y;    
}
ispress_right = false;
//selectbox1_x = 0;
//selectbox1_y = 0;
//selectbox2_x = 0;
//selectbox2_y = 0;


//view_wview[0] = 320 * zoom;
//view_hview[0] = 240 * zoom;

//view_xview[0] = x - view_wview / 2;
//view_yview[0] = y - view_hview / 2;

zoom_level = 1;
//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);


click_x = camera_get_view_width(view_camera[0])/2;
click_y = camera_get_view_height(view_camera[0])/2;


//camera_set_view_pos(view_camera[0], 0, 0);
//camera_set_view_size(view_camera[0], 320, 240);
//Setting up object target information
//camera_set_view_target(view_camera[0],obj_player);
camera_set_view_target(view_camera[0],obj_view);
camera_set_view_speed(view_camera[0], -1, -1);
camera_set_view_border(view_camera[0], 32, 32);