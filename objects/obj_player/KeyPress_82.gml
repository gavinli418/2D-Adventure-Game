/// @description Insert description here
// You can write your code in this editor
if(dead == false)
{
if(selectedpotion == spr_healthpotion)
{
	if(potionindex < 6 && index > 0)
	{
		index--;
		potionindex++;
		instance_create_layer(x,y,"Effects", obj_healingeffect);
		audio_play_sound(sd_healthpotion, 0, false);
	}
	else
	{

	}
}
else if(selectedpotion == spr_strengthpotion)
{
	if(spotionindex < 6)
	{
		spotionindex++;
		strength_boost_active = true;
		instance_create_layer(x,y,"Effects", obj_strengtheffect);
		show_debug_message("Strength boost activated!");
		strength_boost_timer += 10000; // 10 seconds
		audio_play_sound(sd_strengthpotion, 0, false);
		
	}
	else
	{

	}
}
}