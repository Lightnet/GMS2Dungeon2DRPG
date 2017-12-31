isboundbox = false;
iscollide = false;
var xx = display_get_gui_width()/2;
var yy = display_get_gui_height()/2;
var screenx = device_mouse_x_to_gui(0);
var screeny = device_mouse_y_to_gui(0);
draw_text(xx-64,16,"BUILD MODE");
var id_name = "none";
              
draw_text(xx-64,32,"Select: "+id_name);
draw_set_halign(fa_left);