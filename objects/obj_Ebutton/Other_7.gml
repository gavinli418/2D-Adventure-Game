/// @description Insert description here
// You can write your code in this editor

if (parent_chest != noone)
{
    parent_chest.image_speed = 1; // start chest opening animation
    parent_chest.opened = true;
}
instance_destroy(); // destroy the button after triggering
