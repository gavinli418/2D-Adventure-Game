/// @description Insert description here
// You can write your code in this editor
if(dead == false)
{
if(bow == false)
{
	audio_play_sound(sd_sword, 0, false);
if(!keyboard_check(vk_shift) && sprite_index != spr_attackright1 && sprite_index == spr_idleright/* || sprite_index == spr_walkright*/)
{
	sprite_index = spr_attackright1;
	left = false;
	var nearest_enemy = instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent);
	
	if(nearest_enemy != noone)
	{
		
		if(abs(nearest_enemy.x - obj_player.x) <= 150 && abs(nearest_enemy.y - obj_player.y) <= 50)
		{
			if(strength_boost_active == true)
			{
				nearest_enemy.currentHp -= 5;
				show_debug_message("Attacked with boosted strength!");
			}
			else
			{
				nearest_enemy.currentHp --;
			}
			if(alarm[3] < 0)
			{
				nearest_enemy.image_blend = c_red;
				nearest_enemy.kb_x = sign(nearest_enemy.x - obj_player.x);
				nearest_enemy.kb_y = sign(nearest_enemy.y - obj_player.y);
				alarm[3] = 20;
				nearest_enemy.knockback_applied = true;
			}
			
		}

	}
	image_speed = 0.3;
	
}
else if(!keyboard_check(vk_shift) && sprite_index != spr_attackleft1 && sprite_index == spr_idleleft/* || sprite_index == spr_walkleft*/)
{
	sprite_index = spr_attackleft1;
	var nearest_enemy = instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent);
	left = true;
	if(nearest_enemy != noone)
	{
		if(abs(obj_player.x - nearest_enemy.x) <= 150 && abs(obj_player.y - nearest_enemy.y) <= 50)
		{
			if(strength_boost_active == true)
			{
				nearest_enemy.currentHp -= 5;
				show_debug_message("Attacked with boosted strength!");
			}
			else
			{
				nearest_enemy.currentHp --;
			}
			
			if(alarm[3] < 0)
			{
				nearest_enemy.image_blend = c_red;
				nearest_enemy.kb_x = sign(nearest_enemy.x - obj_player.x);
				nearest_enemy.kb_y = sign(nearest_enemy.y - obj_player.y);
				alarm[3] = 20;
				nearest_enemy.knockback_applied = true;
			}
		}
	}
	image_speed = 0.3;
}
else if(keyboard_check(vk_shift) && sprite_index == spr_sprintattackleft)
{
	var nearest_enemy = instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent);
	
	left = true;
	if(nearest_enemy != noone)
	{
		if(abs(obj_player.x - nearest_enemy.x) <= 150 && abs(obj_player.y - nearest_enemy.y) <= 50)
		{
			if(strength_boost_active == true)
			{
				nearest_enemy.currentHp -= 10;
			}
			else
			{
				nearest_enemy.currentHp -= 5;
			}
			
			if(alarm[3] < 0)
			{
				nearest_enemy.image_blend = c_red;
				nearest_enemy.kb_x = sign(nearest_enemy.x - obj_player.x);
				nearest_enemy.kb_y = sign(nearest_enemy.y - obj_player.y);
				alarm[3] = 20;
				nearest_enemy.knockback_applied = true;
			}
		}
	}
	image_speed = 0.3;
}
else if(keyboard_check(vk_shift) && sprite_index == spr_sprintattackright)
{
	var nearest_enemy = instance_nearest(obj_player.x, obj_player.y, obj_enemy_parent);
	left = false;
	
	if(nearest_enemy != noone)
	{
		if(abs(nearest_enemy.x - obj_player.x) <= 150 && abs(nearest_enemy.y - obj_player.y) <= 50)
		{
			if(strength_boost_active == true)
			{
				nearest_enemy.currentHp -= 10;
			}
			else
			{
				nearest_enemy.currentHp -= 5;
			}
			
			if(alarm[3] < 0)
			{
				nearest_enemy.image_blend = c_red;
				nearest_enemy.kb_x = sign(nearest_enemy.x - obj_player.x);
				nearest_enemy.kb_y = sign(nearest_enemy.y - obj_player.y);
				alarm[3] = 20;
				nearest_enemy.knockback_applied = true;
			}
		}
	}
	image_speed = 0.3;
}
}
else
{
	
	if(sprite_index == spr_idlebowleft)
	{
		if(ARROWS > 0)
		{
			left = true;
			sprite_index = spr_bowfireleft;
			image_speed = 1;
			var bullet = instance_create_layer(x, y-15, "Instances", obj_arrowleft);
			var dir = point_direction(x, y, x-100, y);
			bullet.direction = dir;
			bullet.speed = 25;
			ARROWS--;
			audio_play_sound(sd_bow, 0, false);
		}
		
	}
	else if(sprite_index == spr_idlebowright)
	{
		if(ARROWS > 0)
		{
			left = false;
			sprite_index = spr_bowfireright;
			image_speed = 1;
			var bullet = instance_create_layer(x, y-15, "Instances", obj_arrowright);
			var dir = point_direction(x, y, x+100, y);
			bullet.direction = dir;
			bullet.speed = 25;
			ARROWS--;
			audio_play_sound(sd_bow, 0, false);
		}
	}
}
}

