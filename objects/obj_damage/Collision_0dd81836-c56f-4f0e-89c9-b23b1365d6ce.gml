/// @description Insert description here
// You can write your code in this editor
/// damage all lifeforms
show_debug_message("DAMAGE");

if (other.id != creator){
    other.hp -= damage;
	show_debug_message("HEALTH:"+ string(other.hp));
	
	
    //other.loyalty -= damage/2;
    //creator.loyalty += damage/3;
    
    //apply the knockback
    if( instance_exists(creator)){
        var dir =  point_direction(creator.x, creator.y, other.x, other.y);
    }else{
        var dir =  point_direction(x, y, other.x, other.y);    
    }
    /*
    var xforce = lengthdir_x(knockback, dir);
    var yforce = lengthdir_y(knockback, dir);
    with(other){
        physics_apply_impulse(x,y,xforce,yforce);
    }
	*/
}