/// @description Insert description here
// You can write your code in this editor
if(sprite_index == spr_egyptbossdeathleft || sprite_index == spr_egyptbossdeathright) {
    instance_destroy(self);
	
	for(i = 0; i<random_range(20, 40); i++)
	{
		instance_create_layer(x + random_range(-50, 50), y + random_range(-50, 50), "Instances", obj_coin);
	}
    var new_attacker = noone;
    var shortest_dist = 100000;

    with (obj_enemy_parent) {
        var d = point_distance(x, y, obj_player.x, obj_player.y);
        if (d < shortest_dist) {
            shortest_dist = d;
            new_attacker = id;
        }
    }

    global.attacking_enemy = new_attacker;
	global.damaged_enemy = noone;
}
