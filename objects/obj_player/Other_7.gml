/// @description Insert description here
// You can write your code in this editor
if(sprite_index == spr_attackright1 || sprite_index == spr_walkright)
{
	sprite_index = spr_idleright;
}
else if (sprite_index == spr_attackleft1 || sprite_index == spr_walkleft)
{
	sprite_index = spr_idleleft;
}
else if(sprite_index == spr_sprintattackright)
{
	sprite_index = spr_idleright;
}
else if(sprite_index = spr_sprintattackleft)
{
	sprite_index = spr_idleleft;
}
if(sprite_index == spr_playerdamageleft)
{
	sprite_index = spr_idleleft;
}
else if (sprite_index == spr_playerdamageright)
{
	sprite_index = spr_idleright;
}
else if(sprite_index == spr_bowfireleft)
{
	sprite_index = spr_idlebowleft;
}
else if(sprite_index == spr_bowfireright)
{
	sprite_index = spr_idlebowright;
}
else if(sprite_index == spr_playerdeathleft || sprite_index == spr_playerdeathright)
{
	room_goto(rm_loseroom);
}