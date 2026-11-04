/// @description Insert description here
// You can write your code in this editor
global.damaged_enemy = noone;
if (instance_exists(spawn_parent))
	{
		spawn_parent.has_enemy = false;
		spawn_parent.timer = 0;
	}