/// @description Insert description here
// You can write your code in this editor

if (parent_chest != noone && !parent_chest.opened)
{
    image_speed = 0.5; // animate the button
	audio_play_sound(sd_chest, 0, false);
}

