/// @description Insert description here
// You can write your code in this editor
// Time before respawning enemy in steps (60 seconds = 3600 at 60 FPS)
enemy_type = obj_slime; // Or whatever enemy you want to spawn here
respawn_time = 3600;
timer = 0;
has_enemy = true;

// Spawn the first enemy
enemy = instance_create_layer(x, y, "Instances", enemy_type);
enemy.spawn_parent = id;

