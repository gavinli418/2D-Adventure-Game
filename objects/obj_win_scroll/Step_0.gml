/// @description Insert description here
// You can write your code in this editor
scroll_y -= scroll_speed;

if (scroll_y + array_length(text) * 40 < 0) 
{
	room_goto(rm_start); 
}
