_CELLWIDTH = CELLWIDTH;
_CELLHEIGHT = CELLHEIGHT;

//if(path !=noone){
//	show_debug_message("PATH: "+string(path_get_number(path)));
//}

//if(bpath_start){
	var xx = (obj_dungeon_core.x div _CELLWIDTH) * _CELLWIDTH + _CELLWIDTH/2;
	var yy = (obj_dungeon_core.y div _CELLHEIGHT) * _CELLHEIGHT + _CELLHEIGHT/2;
	
	if(mp_grid_path(global.grid_path, path,x,y,xx,yy,true)){
		path_start(path, 5, path_action_stop, false);
		//show_debug_message( "PATH:" + string( path_get_length(path)));
		//bpath_start = false;
		show_debug_message("path pass!");
	}else{
		show_debug_message("path fail!");
	}
//}