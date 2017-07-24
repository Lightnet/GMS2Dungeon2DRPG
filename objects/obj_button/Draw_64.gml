/// @description Draw Button
// You can write your code in this editor

if(brender){
	draw_set_colour(c_blue);
	draw_button(x,y,x+width,y+height,bhover);

	draw_set_colour(c_white);
    draw_set_halign(fa_left);
	draw_text(x+4,y+6,name);
}