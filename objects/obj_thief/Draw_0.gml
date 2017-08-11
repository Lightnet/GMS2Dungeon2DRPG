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
	draw_rectangle(x,y,x+2,y+2,false);
	
	draw_rectangle(inst.x,inst.y,inst.x+2,inst.y+2,false);
	draw_line(x, y, inst.x, inst.y);
	//show_debug_message("Line?");
}