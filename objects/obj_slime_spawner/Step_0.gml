/// @description Insert description here
// You can write your code in this editor
if (!has_enemy) {
    timer += 1;
    if (timer >= respawn_time) {
        enemy = instance_create_layer(x, y, "Instances", enemy_type);
        enemy.spawn_parent = id;
        has_enemy = true;
        timer = 0;
    }
}
