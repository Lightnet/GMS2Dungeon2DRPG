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