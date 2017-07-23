draw_set_colour(c_white);

draw_text(4,16*0+6, "(F1) Help | " + "DP:" +string(dp));
draw_text(4,16*1+6, "Health:" +string(100));
var cameratext = "none";
if(toggle_camera){
	cameratext = "Camera";
}else{
	cameratext = "Player";
}

draw_text(4,16*2+6, "Mode:" + cameratext);