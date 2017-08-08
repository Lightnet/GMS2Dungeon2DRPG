adventurers[0] = obj_thief;
adventurers[1] = obj_warrior;
adventurers[2] = obj_mage;
adventurers[3] = obj_cleric;
adventurers[4] = obj_archer;

//show_debug_message("create party");

//var rng = irandom(array_length_1d(adventurers)-1);

show_debug_message("create party:"+string(rng));

if(instance_exists(obj_dungeon_exit)){
	var xx = obj_dungeon_exit.x;
	var yy = obj_dungeon_exit.y;
	
	//random
	var rng = irandom(array_length_1d(adventurers)-1);
	
	var obj_tmp = instance_create_layer(xx,yy,"adventures",adventurers[rng]);
	
	//update adventure count
	scr_getadventurercount();
}