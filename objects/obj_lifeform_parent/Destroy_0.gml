/// @description Insert description here
// You can write your code in this editor
/// delete stuff
//death_loyalty();

var dp = (maxhp + maxmp)/dpconvertrate;
show_debug_message("Dead dp:"+ string(dp))

//add dungeon poitns
obj_dungeon_status.dp += dp;

//delete path
if(path_exists(path)){
	path_delete(path);
}

//delete object
with(followTarget)
{
    instance_destroy(); 
}

