/// @description Insert description here
// You can write your code in this editor
/// draw health bar
if(bdisplay_healthbar){
    draw_set_colour(c_gray);
    draw_rectangle(x+hb_offset_x,y+hb_offset_y,x+hb_width+hb_offset_x,y+  hb_height + hb_offset_y,false);
    draw_set_colour(c_green);
    
    var bar_percent = hp / maxhp ;
    
    //show_debug_message(bar_percent);
    var percent_width = hb_width * clamp(bar_percent,0,1);
    //show_debug_message(max(bar_percent,1));    
    //show_debug_message(percent_width);
    draw_rectangle(x+hb_offset_x,y+hb_offset_y,x + percent_width + hb_offset_x,y +  hb_height + hb_offset_y,false);
}
if(bdisplay_hungerbar && hungerDrop != 0){
    draw_set_colour(c_gray);
    draw_rectangle(x+hb_offset_x,y+hb_offset_y+hb_height,x+hb_width+hb_offset_x,y+hb_height+(0.25*hb_height)+hb_offset_y,false);
    draw_set_colour(c_orange);
    
    var bar_percent = hunger / maxHunger ;
    
    //show_debug_message(bar_percent);
    var percent_width = hb_width * clamp(bar_percent,0,1);
    //show_debug_message(max(bar_percent,1));    
    //show_debug_message(percent_width);
    draw_rectangle(x+hb_offset_x,y+hb_offset_y+hb_height,x+percent_width+hb_offset_x,y+hb_height+(0.25*hb_height)+hb_offset_y,false);
}
if (commandTarget != noone && instance_exists(commandTarget))
{
    var xOffset = sprite_get_xoffset(commandTarget.sprite_index);
    var yOffset = sprite_get_yoffset(commandTarget.sprite_index);
    var centerX = sprite_get_width(commandTarget.sprite_index) / 2.0;
    var centerY = sprite_get_height(commandTarget.sprite_index) / 2.0;
    draw_circle(commandTarget.x - xOffset + centerX,commandTarget.y - yOffset + centerY,5,true);
}
draw_self();