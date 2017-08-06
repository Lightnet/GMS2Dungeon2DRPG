/// @description Insert description here
// You can write your code in this editor
/// fade
if(image_alpha > 0){
    image_alpha -= 0.1;
}else{
    instance_destroy();
}