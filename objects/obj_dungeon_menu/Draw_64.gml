/// @description Insert description here
// You can write your code in this editor
/// draw the menu
if(bdisplay){
    //show_debug_message("show menu?");
    var xx = display_get_gui_width()/2;
    var yy = display_get_gui_height()/2;
    draw_set_halign(fa_center);
    draw_text(xx,yy-128-32,title);
    
    for(var i=0; i<= array_length_1d(option)-1;i++){
        draw_set_colour(c_gray);
        var displaytext = option[i];
        if(i == menu_index){
            draw_set_colour(c_white);
            displaytext += "[C]";
        }
        draw_text((xx + (i*128))-256,yy-128,displaytext);
    }
    draw_set_colour(c_white);
    draw_set_halign(fa_left);
    
    script_execute(currentmenu);
	
}

if(obj_input.help_key){
	script_execute(scr_display_help_key);
}