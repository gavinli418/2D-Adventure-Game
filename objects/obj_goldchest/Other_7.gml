/// @description Insert description here
// You can write your code in this editor

image_index = 8;
image_speed = 0;

for (var i = 0; i < irandom_range(5, 10); i++)
{
    instance_create_layer(x + random_range(-50, 50), y + random_range(-50, 50), "Instances", obj_coin);
}

if (e_button_instance != noone && instance_exists(e_button_instance))
{
    instance_destroy(e_button_instance);
}
e_button_instance = noone;
e_button_instance = noone;
opened = true;

