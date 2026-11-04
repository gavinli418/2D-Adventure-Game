/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player)
{
	if (obj_player != noone) 
	{
		if (obj_player.x > x) 
		{
			sprite_index = spr_enemywalkright;
			image_speed = 0.3;
			if(abs(obj_player.x - obj_enemy.x) <= 200 && abs(obj_player.y - obj_enemy.y) <= 20)
			{
				sprite_index = spr_enemyattackright;
				image_speed = 0.3;
			}
			target_x = obj_player.x - 100;
			target_y = obj_player.y;
			if(obj_player.shield == true)
			{
				target_x = obj_player.x - 130;
				target_y = obj_player.y;
			}
		} 
		else if (obj_player.x < x ) 
		{
			sprite_index = spr_enemywalkleft;
			image_speed = 0.3;
			if(abs(obj_player.x - obj_enemy.x) <= 200 && abs(obj_player.y - obj_enemy.y) <= 20)
			{
				sprite_index = spr_enemyattackleft;
				image_speed = 0.3;
			}
			target_x = obj_player.x + 100;
			target_y = obj_player.y;
			if(obj_player.shield == true)
			{
				target_x = obj_player.x + 130;
				target_y = obj_player.y;
			}
		}
		
	}
	
	
	
}
else
{
	if (obj_player != noone) 
	{
		if (obj_player.x > x) 
		{
			sprite_index = spr_enemyidleright;
		} 
		else if (obj_player.x < x) 
		{
			sprite_index = spr_enemyidleleft;
		}
	}
	//target_x = random_range(xstart - 100, xstart + 100);
	//target_y = random_range(ystart - 100, ystart + 100);
}
alarm[0] = 10;