/// @description Insert description here
// You can write your code in this editor
if(instance_number(obj_save_load) > 1) instance_destroy();

//grid_map
grid_map = ds_grid_create(32, 32);

// Setting the Grid to empty space
ds_grid_set_region(grid_map, 0,0, 32, 32, 0);
