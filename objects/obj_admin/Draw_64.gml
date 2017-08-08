/// @description Insert description here
// You can write your code in this editor

if(bshow){
	draw_set_color(c_gray);
	draw_rectangle(0,0,32,32,false);
	
	for(var i = 0; i < array_length_1d(buttontabs);i++){
		buttontabs[i].brender = true;
	}
	if(bshow_adventure){
		for(var i = 0; i < array_length_1d(buttons);i++){
			buttons[i].brender = true;
		}
	}else{
		for(var i = 0; i < array_length_1d(buttons);i++){
			buttons[i].brender = false;
		}
	}
	
	draw_set_color(c_white);
}else{
	for(var i = 0; i < array_length_1d(buttons);i++){
		buttons[i].brender = false;
	}
	
	for(var i = 0; i < array_length_1d(buttontabs);i++){
		buttontabs[i].brender = false;
	}
}
