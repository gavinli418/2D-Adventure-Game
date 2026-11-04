/// @description Insert description here
// You can write your code in this editor
if(active == true)
{

if(currentHp != 0)
{
if(global.attacking_enemy == id)
{

if(instance_exists(obj_player) && distance_to_object(obj_player) < distance_to_player)
{
	if (obj_player != noone) 
	{
	
		if (obj_player.x > global.attacking_enemy.x) 
		{
			sprite_index = spr_egyptbosswalkright;
			image_speed = 0.2;
			if(abs(obj_player.x - global.attacking_enemy.x) <= 200 && abs(obj_player.y - global.attacking_enemy.y) <= 20)
			{
				 
				sprite_index = spr_egyptbossattackright;
				image_speed = 0.3;
			}
			target_x = obj_player.x - 100;
			target_y = obj_player.y;
			if(obj_player.shield == true)
			{
				target_x = obj_player.x - 135;
				target_y = obj_player.y;
			}
			 
		} 
		else if (obj_player.x < global.attacking_enemy.x) 
		{
			sprite_index = spr_egyptbosswalkleft;
			image_speed = 0.2;
			if(abs(obj_player.x - global.attacking_enemy.x) <= 200 && abs(obj_player.y - global.attacking_enemy.y) <= 20)
			{
				
				sprite_index = spr_egyptbossattackleft;
				image_speed = 0.3;
			}
			target_x = obj_player.x + 100;
			target_y = obj_player.y;
			if(obj_player.shield == true)
			{
				target_x = obj_player.x + 135;
				target_y = obj_player.y;
			}
			 
		}
		
	}
	
}
}
else
{
	if (obj_player != noone) 
	{
		if (obj_player.x > global.attacking_enemy.x) 
		{
			sprite_index = spr_egyptbossidleright;
			target_x = x;
			target_y = y;
			
		} 
		else if (obj_player.x < global.attacking_enemy.x) 
		{
			sprite_index = spr_egyptbossidleleft;
			target_x = x;
			target_y = y;
			
		}
	}
}

alarm[0] = 10;
}

}
