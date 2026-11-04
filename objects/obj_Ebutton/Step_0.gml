/// @description Insert description here
// You can write your code in this editor
// Optional: Destroy if player walks away from the parent chest

if (parent_chest != noone)
{
    var dist = point_distance(parent_chest.x, parent_chest.y, obj_player.x, obj_player.y);
    
    if (dist > 100 || parent_chest.opened)
    {
        instance_destroy();
    }
}
