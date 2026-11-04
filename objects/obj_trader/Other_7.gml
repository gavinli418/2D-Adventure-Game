/// @description Insert description here
// You can write your code in this editor
if(sprite_index == spr_tradertradesleft)
{
	image_index = 5;
	image_speed = 0;
	if (!instance_exists(obj_trademenu))
{
    instance_create_layer(0, 0, "GUI", obj_trademenu);
}
}
else if (sprite_index == spr_tradertradesright)
{
	image_index = 5;
	image_speed = 0;
	if (!instance_exists(obj_trademenu))
{
    instance_create_layer(0, 0, "GUI", obj_trademenu);
}
}

