/// @description Insert description here
// You can write your code in this editor
if(dead == false)
{
if(sprite_index == spr_walkright || sprite_index == spr_walkrightbow)
{
	if(bow == true)
	{
		sprite_index = spr_idlebowright;
	}
	else
	{
		sprite_index = spr_idleright;
	}
}
else if (sprite_index == spr_walkleft || sprite_index == spr_walkleftbow)
{
	if(bow == true)
	{
		sprite_index = spr_idlebowleft;
	}
	else
	{
		sprite_index = spr_idleleft;
	}
}
}