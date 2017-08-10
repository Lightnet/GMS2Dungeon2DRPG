/// @description control depth
// You can write your code in this editor
/// control depth
/*
if(followTarget.followingPath)
{
    var dir = point_direction(x,y,followTarget.x,followTarget.y);
    var hspd = lengthdir_x(spd,dir);
    var vspd = lengthdir_y(spd,dir);
    if(hspd != 0){
        image_xscale = sign(hspd);
    }
    scr_get_face(dir);
    
    phy_position_x += hspd
    phy_position_y += vspd;
}
*/
//depth = -y;
hunger = max(0, hunger - hungerDrop);
/*
if ( hunger <= 0) {
    hp = max(0, hp - (maxhp/10.0/room_speed));
    loyalty -= 2/room_speed;
}
*/

if(hp <= 0){
    //var corpse = instance_create_layer(x,y,"creatures",obj_corpse_parent);
    //corpse.food = maxHunger/2;
    //corpse.sprite_index = death_sprite;
    instance_destroy();
}
var corpse = collision_point(x,y,obj_corpse_parent,false,true);
if (corpse && alarm[11] <= 0)
{
    var eatAmount = max(0,min(maxHunger-hunger,corpse.food,maxHunger/10));
    corpse.food -= eatAmount;
    hunger += eatAmount;
    alarm[11] = 1*room_speed;
    loyalty += 5;
}

