///dungeon key inputs

if(obj_input.camtoggle_key){
    if(toggle_camera){
        toggle_camera = false;
        if(instance_exists(obj_view)){
            with(obj_view){
                bcameracontrol = false;
                bfollowplayer = true;
				show_debug_message("player");
            }
        }
    }else{
        toggle_camera = true;
        if(instance_exists(obj_view)){
            with(obj_view){
                bcameracontrol = true;
                bfollowplayer = false;
				show_debug_message("camera");
            }
        }
    }
}

if(obj_input.buildmenu_key){
    if(instance_exists(obj_dungeon_build_menu)){
        if(obj_dungeon_build_menu.isbuild){
            obj_dungeon_build_menu.isbuild = false;
        }else{
            obj_dungeon_build_menu.isbuild = true;
        }
    }
}