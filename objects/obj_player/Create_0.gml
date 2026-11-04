/// @description Insert description here
// You can write your code in this editor
enum states {
	idle,
	walking
}
coins = 0;
state = states.idle;

x_pos = x div tile_width;
y_pos = y div tile_height;

x_from = x_pos;
y_from = y_pos;

x_to = x_pos;
y_to = y_pos;

walk_anim_length = 0.5;
walk_anim_time = 0;

healthbar_x = 200;
healthbar_y = 50;
staminabar_x = 151;
staminabar_y = 100;

index = 0;
index_max = 5;

sindex = 0;
sindex_max = 7;
collided = 1;
cooldown = 1;
left = false;
shield = false;
bow = false;
potionindex = 0;
spotionindex = 0;
selectedpotion = spr_healthpotion;
strength_boost_timer = 0;
strength_boost_active = false;
dead = false;