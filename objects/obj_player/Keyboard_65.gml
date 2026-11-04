/// @description Insert description here
// You can write your code in this editor
if(dead == false)
{
	left = true;
shield = false;
if(bow == false)
{
if(sprite_index != spr_walkleft && sprite_index != spr_attackleft1 && !keyboard_check(ord("D")))
{
	if(mouse_check_button_pressed(mb_left) && keyboard_check(vk_shift) && sindex < sindex_max && cooldown == 1)
	{
		cooldown = 0;
		sprite_index = spr_sprintattackleft;
		image_index = 0;
		image_speed = 0.3;
		alarm[2] = 100;
		
	}
	else if(sprite_index == spr_sprintattackleft)
	{
	
	}
	else if(keyboard_check(vk_shift) && sindex < sindex_max)
	{
		sprite_index = spr_sprintleft;
		walk_anim_time += delta_time / 80000;
		
		if (alarm[1] <= 0) {
            alarm[1] = 60;  
        }
		
	}
	else
	{
		sprite_index = spr_walkleft;
		walk_anim_time += delta_time / 100000;
		
	}
}
else if(keyboard_check(ord("D")))
{
	walk_anim_time += 0;
}
}
else if(bow == true)
{
	if(sprite_index != spr_walkleftbow && sprite_index != spr_attackleft1 && !keyboard_check(ord("D")))
	{
		sprite_index = spr_walkleftbow;
		walk_anim_time += delta_time / 100000;
		
	}
	else if(keyboard_check(ord("D")))
	{
		walk_anim_time += 0;
	}	
}
image_speed = 0.3;
if(place_free(x - 30, y))
{
	Move(directions.left);
}
}