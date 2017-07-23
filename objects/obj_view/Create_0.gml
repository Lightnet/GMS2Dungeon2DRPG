/// @description Insert description here
// You can write your code in this editor
/// camera move around
zoom = 1;
bfollowplayer = true;
bcameracontrol = false;

// move to player
if(instance_exists(obj_player)){
    x = obj_player.x;
    y = obj_player.y;    
}
ispress_right = false;
selectbox1_x = 0;
selectbox1_y = 0;
selectbox2_x = 0;
selectbox2_y = 0;


view_wview[0] = 320 * zoom;
view_hview[0] = 240 * zoom;

view_xview[0] = x - view_wview / 2;
view_yview[0] = y - view_hview / 2;