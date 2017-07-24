/// @description Insert description here
// You can write your code in this editor
/// control the menu

if(bdisplay){
    var xx = display_get_gui_width()/2;
    var yy = display_get_gui_height()/2;
    for(var i=0; i < array_length_1d(buttontabs);i++){
        buttontabs[i].x = xx + (i*155) - (155*5/2);
        buttontabs[i].y = yy - 128;
        buttontabs[i].brender = true;
    }
}else{
    for(var i=0; i< array_length_1d(buttontabs);i++){
        buttontabs[i].brender = false;        
    }
}

script_execute(current_state);