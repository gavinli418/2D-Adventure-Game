/// @description Insert description here
// You can write your code in this editor
if(dead == false)
{
shield = false;

if((sprite_index != spr_walkright && (sprite_index == spr_idleright || sprite_index == spr_idlebowright) || sprite_index == spr_shieldright))
{
	if(sprite_index == spr_idlebowright)
	{
		sprite_index = spr_walkrightbow;
	}
	else if(sprite_index = spr_idleright)
	{
		sprite_index = spr_walkright;
	}
	walk_anim_time += delta_time / 100000;
	image_speed = 0.3;
}
else if((sprite_index != spr_walkleft && (sprite_index == spr_idleleft || sprite_index == spr_idlebowleft) || sprite_index == spr_shieldleft))
{
	if(sprite_index == spr_idlebowleft)
	{
		sprite_index = spr_walkleftbow;
	}
	else if (sprite_index == spr_idleleft)
	{
		sprite_index = spr_walkleft;
	}
	walk_anim_time += delta_time / 100000;
	image_speed = 0.3;
}


if(place_free(x , y+30))
{
	Move(directions.down);
}
}