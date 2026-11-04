/// @description Insert description here
// You can write your code in this editor
if(collided == 1)
{
	collided = 0;
	if(obj_player.left == true)
	{
		global.damaged_enemy = id;
		global.damaged_enemy.sprite_index = spr_frostbossidleright;
		image_speed = 0.1;
		currentHp--;
	
	}
	else
	{
		global.damaged_enemy = id;
		global.damaged_enemy.sprite_index = spr_frostbossidleleft;
		image_speed = 0.1;
		currentHp--;
		
	}
	
}
alarm[1] = 1;
instance_destroy(obj_arrowright);