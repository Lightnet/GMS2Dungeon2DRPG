/// @description Insert description here
// You can write your code in this editor



if(keyboard_check(vk_left))
{
	spriter_apply_character_map(self,"NoHeadGear");
	//changeequip();
	//spriter_ApplyInstanceCharacterMap()
	show_debug_message("no headgear");
}

if(keyboard_check(vk_right))
{
	spriter_apply_character_map(self,"HeadGear01");
	show_debug_message("headgear");
}

spriter_render(self,false);