
creatures[0] = obj_slime;

var counts = 0;

for(var i = 0; i < array_length_1d(creatures); i++){
	var obj_count = scr_getobjectcount(creatures[i]);
	counts += obj_count;
}

show_debug_message("creatures: "+string(counts));