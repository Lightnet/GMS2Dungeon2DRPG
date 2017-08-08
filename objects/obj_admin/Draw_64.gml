/// @description Insert description here
// You can write your code in this editor

if(bshow){
	draw_set_color(c_gray);
	draw_rectangle(0,0,32,32,false);
	
	for(var i = 0; i < array_length_1d(buttontabs);i++){
		buttontabs[i].brender = true;
	}
	
	if(bshow_adventure){
		for(var i = 0; i < array_length_1d(btnadventures);i++){
			btnadventures[i].brender = true;
		}
	}else{
		for(var i = 0; i < array_length_1d(btnadventures);i++){
			btnadventures[i].brender = false;
		}
	}
	
	if(bshow_dungeon){
		for(var i = 0; i < array_length_1d(dungeonbtns);i++){
			dungeonbtns[i].brender = true;
		}
	}else{
		for(var i = 0; i < array_length_1d(dungeonbtns);i++){
			dungeonbtns[i].brender = false;
		}
	}
	
	if(bshow_map){
		for(var i = 0; i < array_length_1d(mapbtns);i++){
			mapbtns[i].brender = true;
		}
	}else{
		for(var i = 0; i < array_length_1d(mapbtns);i++){
			mapbtns[i].brender = false;
		}
	}
	
	draw_set_color(c_white);
}else{
	for(var i = 0; i < array_length_1d(buttontabs);i++){
		buttontabs[i].brender = false;
	}
	
	for(var i = 0; i < array_length_1d(btnadventures);i++){
		btnadventures[i].brender = false;
	}
	
	for(var i = 0; i < array_length_1d(dungeonbtns);i++){
		dungeonbtns[i].brender = false;
	}
	
	for(var i = 0; i < array_length_1d(mapbtns);i++){
		mapbtns[i].brender = false;
	}
}
