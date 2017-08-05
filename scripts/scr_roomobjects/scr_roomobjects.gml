//with(all)
    //show_debug_message(object_get_name(object_index));

//with(all){
    //show_debug_message(object_get_name(object_index));
	//if(!is_undefined(objtype)){
	//var _obj = objtype;
	//if(!is_undefined(_obj)){
		//show_debug_message("Found!");
	//}
	//if(is_undefined(objtype) == true){
		//if(objtype == "creature"){
			//show_debug_message("Found!");
		//}
	//}
	//var str = variable_instance_get_names(instance_id);
	//show_debug_message(str);
//}

//with(obj_slime){
	//show_debug_message("FOUND!")
	//if(instance_exists(object_index)){
		//show_debug_message("FOUND SLIME!" + string(instance_id));
	//}
//}
//with(all){
	//v[? "this"] = self.objtype;
	//if(!is_undefined(self.objtype  != undefined)){
	
	//}
//}

var slime_count = scr_getobjectcount(obj_slime);
show_debug_message("slime_count: "+string(slime_count))
