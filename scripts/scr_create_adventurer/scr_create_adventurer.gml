adventurers[0] = obj_thief;
adventurers[1] = obj_warrior;
adventurers[2] = obj_mage;
adventurers[3] = obj_cleric;
adventurers[4] = obj_archer;

var adventurer_index = argument0;

var obj_class = noone;

switch (adventurer_index){
	case 0://thief
		obj_class = obj_thief;
		break;
	case 1://Warrior
		obj_class = obj_warrior;
		break;
	case 2://Mage
		obj_class = obj_mage;
		break;
	case 3://Cleric
		obj_class = obj_cleric;
		break;
	case 4://Archer
		obj_class = obj_archer;
		break;
	default:
		obj_class = obj_thief;
}

show_debug_message("Job: "+string(adventurer_index));

if(instance_exists(obj_dungeon_exit)){
	var xx = obj_dungeon_exit.x;
	var yy = obj_dungeon_exit.y;
	
	var cx = xx/CELLWIDTH;
	var cy = yy/CELLHEIGHT;
	//check position base on gird for used in path and tile maps.
	show_debug_message("X:"+string(cx)+" Y:"+string(cy));
	// x , y
	
	//var obj_tmp = instance_create_layer(xx,yy-32,"adventures",obj_thief); //1
	//var obj_tmp = instance_create_layer(xx+32,yy-32,"adventures",obj_thief); //2
	//var obj_tmp = instance_create_layer(xx+32,yy,"adventures",obj_thief); //3
	//var obj_tmp = instance_create_layer(xx+32,yy+32,"adventures",obj_thief); //4
	//var obj_tmp = instance_create_layer(xx,yy+32,"adventures",obj_thief); //5
	//var obj_tmp = instance_create_layer(xx-32,yy+32,"adventures",obj_thief); //6
	//var obj_tmp = instance_create_layer(xx-32,yy,"adventures",obj_thief); //7
	//var obj_tmp = instance_create_layer(xx-32,yy-32,"adventures",obj_thief); //8
	
	
	//check if object is not noone then create
	if(obj_class != noone){
		var ot_adventure = instance_create_layer(xx,yy,"adventures",obj_class);
	}
	
	//update adventure count
	scr_getadventurercount();
}