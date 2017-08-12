/// @description Insert description here
// You can write your code in this editor
///draw floor and wall
//red is wall
//green is floor
if(global.bdisplay_map_path){
    draw_set_alpha(0.3);
    mp_grid_draw(grid_path);
    draw_set_alpha(1);
}