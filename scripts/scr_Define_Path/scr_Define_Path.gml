var ot = argument0;

var sx = x;
var sy = y;

var fx = ot.x;
var fy = ot.y;

if(!mp_grid_path(global.grid_path,path,sx,sy,fx,fy,false)){
	show_debug_message("NO PATH!");
	return false;
}else{
	
	return true;
}