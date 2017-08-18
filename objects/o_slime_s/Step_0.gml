/// @description Insert description here
// You can write your code in this editor

var new_anim = noone;
if(keyboard_check(vk_left))
{
	blend = 10;
	new_anim = "left";
}

if(keyboard_check(vk_right))
{
	blend = 10;
	new_anim = "right";
}


if(keyboard_check(vk_up))
{
	blend = 10;
	new_anim = "up";
}

if(keyboard_check(vk_down))
{
	blend = 10;
	new_anim = "forward";
}

if(keyboard_check(vk_nokey))
{
	blend = 100;
	new_anim = "IDLE";
}

if(is_string(new_anim)){
	if(current_anim != new_anim){
		current_anim = new_anim;
		spriter_set_current_animation(self,current_anim,blend);
	}	
}

spriter_update(self);