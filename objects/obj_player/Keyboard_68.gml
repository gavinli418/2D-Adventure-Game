/// @description Insert description here
// You can write your code in this editor
if(dead == false)
{
left = false;
shield = false;
if(bow == false)
{
if(sprite_index != spr_walkright && sprite_index != spr_attackright1 && !keyboard_check(ord("A")))
{
	
	if(mouse_check_button_pressed(mb_left) && keyboard_check(vk_shift) && sindex < sindex_max && cooldown == 1)
	{
		
		cooldown = 0;
		sprite_index = spr_sprintattackright;
		image_index = 0;
		image_speed = 0.3;
		alarm[2] = 100;
		
	}
	else if(sprite_index == spr_sprintattackright)
	{
	
	}
	else if(keyboard_check(vk_shift) && sindex < sindex_max)
	{
		
			sprite_index = spr_sprintright;
			walk_anim_time += delta_time / 80000;
		
			if (alarm[1] <= 0) {
				alarm[1] = 60;  
			}
		
	}
	else
	{
	
		sprite_index = spr_walkright;
		
		walk_anim_time += delta_time / 100000;
		
	}
}
else if(keyboard_check(ord("A")))
{
	walk_anim_time -= delta_time/100000;
}
}
else if(bow == true)
{
	if(sprite_index != spr_walkrightbow && sprite_index != spr_attackright1 && !keyboard_check(ord("A")))
	{
	
		sprite_index = spr_walkrightbow;
		walk_anim_time += delta_time / 100000;
		
	
	}	
	else if(keyboard_check(ord("A")))
	{
		walk_anim_time -= delta_time/100000;
	}
	
}
image_speed = 0.3;
if(place_free(x+30, y))
{
	Move(directions.right);
}
}