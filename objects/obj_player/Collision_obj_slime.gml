/// @description Insert description here
// You can write your code in this editor
if(dead == false)
{
if(collided == 1 && sprite_index != spr_attackright1 && sprite_index != spr_attackleft1 && shield == false && sprite_index != spr_sprintattackleft && sprite_index != spr_sprintattackright)
{
	if(obj_slime.sprite_index == spr_slimeattackleft && abs(obj_slime.x - x) <= 100)
	{
		sprite_index = spr_playerdamageleft;
		image_speed = 0.1;
	}
	else if (obj_slime.sprite_index == spr_slimeattackright && abs(obj_slime.x - x) <= 100)
	{
		sprite_index = spr_playerdamageright;
		image_speed = 0.1;
	}
	
	collided = 0;
	index++;
	
	
	
}
alarm[0] = 2;
}