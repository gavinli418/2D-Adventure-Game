/// @description Insert description here
// You can write your code in this editor
// Minimum distance to maintain between enemies

var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);


move_and_collide(_hor * move_speed, _ver * move_speed, [obj_tree1, obj_tree2]);


if(knockback_applied == true && obj_player.alarm[3] >= 0)
{
	if(obj_player.left == false)
	{
		sprite_index = spr_enemydamageleft;
		image_speed = 0.1;
		target_x = x + kb_x;
		target_y = y + kb_y;
	}
	else
	{
		sprite_index = spr_enemydamageright;
		image_speed = 0.1;
		target_x = x - kb_x;
		target_y = y - kb_y;
	}
	
	
}

kb_x = 20;
kb_y = 0;

if(currentHp <= 0)
{
	if(obj_player.x > x)
	{
		sprite_index = spr_enemydeathright;
		image_speed = 0.4;
		target_x = x;
		target_y = y;
		
	}
	else if(obj_player.x < x)
	{
		sprite_index = spr_enemydeathleft;
		image_speed = 0.4;
		target_x = x;
		target_y = y;
		
	}
	
	
}