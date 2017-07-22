/// @description detect collision
// You can write your code in this editor

if physics_test_overlap(x, y, 0, obj_wall){
    iscollision = true;
    //show_debug_message("collision");  
}else{
    iscollision = false;
    //show_debug_message("no collision");  
}