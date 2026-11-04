/// @description Insert description here
// You can write your code in this editor
if(dead == false)
{
if((sprite_index == spr_idleleft || sprite_index == spr_walkleft) && !keyboard_check(ord("A")) && !keyboard_check(ord("W")) && !keyboard_check(ord("S")))
{
	sprite_index = spr_shieldleft;
	shield = true;
	
	
}
else if((sprite_index == spr_idleright || sprite_index == spr_walkright) && !keyboard_check(ord("D")) && !keyboard_check(ord("W")) && !keyboard_check(ord("S")))
{
	sprite_index = spr_shieldright;
	shield = true;
	
	
}
}

