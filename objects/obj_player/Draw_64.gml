/// @description Insert description here
// You can write your code in this editor

draw_sprite(spr_healthbar, index, healthbar_x, healthbar_y);
draw_sprite(spr_staminabar, sindex, staminabar_x, staminabar_y);
draw_sprite(spr_coin, 0, 60, 150);
draw_sprite(spr_arrowbundle, 0, 60, 200);
if(selectedpotion == spr_healthpotion)
{
	draw_sprite(selectedpotion, potionindex, 3080, 1460); 
}
else
{
	draw_sprite(selectedpotion, spotionindex, 3080, 1460); 
}




