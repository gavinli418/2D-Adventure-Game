/// @description Insert description here
// You can write your code in this editor

image_index = 8;
image_speed = 0;

for (var i = 0; i < random_range(1, 3); i++)
{
    instance_create_layer(x + random_range(-50,50), y + random_range(-20,20), "Instances", obj_arrowbundle);
}

if (e_button_instance != noone && instance_exists(e_button_instance))
{
    instance_destroy(e_button_instance);
}
e_button_instance = noone;
e_button_instance = noone;
opened = true;

