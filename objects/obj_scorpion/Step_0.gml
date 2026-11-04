/// @description Insert description here
// You can write your code in this editor
if (global.attacking_enemy == noone) {
   global.attacking_enemy = id;
}

var _hor = clamp(target_x - x, -1, 1);
var _ver = clamp(target_y - y, -1, 1);


move_and_collide(_hor * move_speed, _ver * move_speed, [obj_tree1, obj_tree2, obj_tree3]);


if(knockback_applied == true && obj_player.alarm[3] >= 0)
{
	if(obj_player.left == false)
	{
		sprite_index = spr_scorpionidleleft;
		global.attacking_enemy.image_speed = 0.1;
		global.attacking_enemy.target_x = global.attacking_enemy.x + kb_x;
		global.attacking_enemy.target_y = global.attacking_enemy.y + kb_y;
	}
	else
	{
		sprite_index = spr_scorpionidleright;
		global.attacking_enemy.image_speed = 0.1;
		global.attacking_enemy.target_x = global.attacking_enemy.x - kb_x;
		global.attacking_enemy.target_y = global.attacking_enemy.y - kb_y;
	}
	
	
}

kb_x = 20;
kb_y = 0;


if(currentHp <= 0)
{
	if(obj_player.x > global.attacking_enemy.x)
	{
		global.attacking_enemy.sprite_index = spr_scorpiondeathright;
		global.attacking_enemy.image_speed = 0.2;
		global.attacking_enemy.target_x =  x;
		global.attacking_enemy.target_y =  y;
		
	}
	else if(obj_player.x < global.attacking_enemy.x)
	{
		global.attacking_enemy.sprite_index = spr_scorpiondeathleft;
		global.attacking_enemy.image_speed = 0.2;
		global.attacking_enemy.target_x =  x;
		global.attacking_enemy.target_y =  y;
		
	}
	
	
}



// Find the closest enemy to the player
var nearest_enemy = noone;
var shortest_dist = 100000; // Large number for comparison

with (obj_enemy_parent) { // Loop through all enemies
    var d = point_distance(x, y, obj_player.x, obj_player.y);
    
    // Check if this enemy is closer than the current attacker
    if (d < shortest_dist) {
        shortest_dist = d;
        nearest_enemy = id;
		
    }
}


if (nearest_enemy != noone && nearest_enemy != global.attacking_enemy) {
    global.attacking_enemy = nearest_enemy;

}

