/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_trademenu))
{
if(obj_trademenu.success == true)
{
	draw_set_color(c_green);
}
else
{
	draw_set_color(c_red);
}
}
draw_set_alpha(alpha);
draw_text(1450, 800, message);
draw_set_alpha(1);
