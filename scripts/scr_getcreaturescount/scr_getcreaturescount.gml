var creatures = array_create(0);

creatures[0] = obj_slime_green;
creatures[1] = obj_slime_gray;
creatures[2] = obj_slime_brown;
creatures[3] = obj_slime_purple;
creatures[4] = obj_slime_red;
creatures[5] = obj_slime_dark;
creatures[6] = obj_slime_light;
creatures[7] = obj_slime_yellow;
creatures[8] = obj_slime_blue;

var counts = 0;

for(var i = 0; i < array_length_1d(creatures); i++){
	var obj_count = scr_getobjectcount(creatures[i]);
	counts += obj_count;
}

show_debug_message("creatures: "+string(counts));

global.Creature_Counts = counts;