/// @description Insert description here
// You can write your code in this editor
event_inherited();
//if(path_exists(path)){
	//draw_path(path,x,y,true);
	//show_debug_message("draw path");
//}
//draw_sprite(sprite_index, image_index, x, y);
//draw_self();

var inst,xx;
//xx = x;

//inst = instance_nearest(xx+100, y, object_index); //not working
//inst = instance_nearest(xx, y, obj_slime);//works
//inst = instance_nearest(xx, y, obj_flame_slime);//works
inst = instance_nearest(x, y, obj_monster_parent);//works
//draw_line(x, y, 0, 0);
if inst != id
{
	//draw_line(x, y, inst.x, inst.y);
	draw_line(x, y, inst.x+16, inst.y+16);
	//show_debug_message("Line?");
}