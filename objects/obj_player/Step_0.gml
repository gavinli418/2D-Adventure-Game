/// @description Insert description here
// You can write your code in this editor
if(state == states.walking){
	
	walk_anim_time += delta_time / 100000;
	var t = walk_anim_time/walk_anim_length;
	if(t>=1){
		walk_anim_time = 0;
		t = 1;
		state = states.idle;
	}
	var _x = lerp(x_from, x_to, t);
	var _y = lerp(y_from, y_to, t);
	
	x = _x * tile_width;
	y = _y * tile_height;
	
}

if (!keyboard_check(vk_shift) && sindex > 0) {
    sindex -= 0.01; 
}
if(bow == true)
{
	if(sprite_index == spr_idleright)
	{
		sprite_index = spr_idlebowright;
	}
	else if (sprite_index == spr_idleleft)
	{
		sprite_index = spr_idlebowleft;
	}
}
else
{
	if(sprite_index == spr_idlebowright)
	{
		sprite_index = spr_idleright;
	}
	else if (sprite_index == spr_idlebowleft)
	{
		sprite_index = spr_idleleft;
	}
}
if (strength_boost_active == true) 
{
   strength_boost_timer-=15;
	show_debug_message("Boost Timer: " + string(strength_boost_timer));
    if (strength_boost_timer <= 0)
	{
        
        strength_boost_active = false;
		strength_boost_timer = 0;
		show_debug_message("Strength boost ended!");
		instance_destroy(obj_strengtheffect);
		
    }
}
if(index == 5)
{
	dead = true;
	if(left == true)
	{
		sprite_index = spr_playerdeathleft;	
	}
	else if (left == false)
	{
		sprite_index = spr_playerdeathright;	
	}
	image_speed = 0.1;
	if (!instance_exists(obj_fade_controller)) {
    instance_create_layer(0, 0, "Instances_fade", obj_fade_controller);
}

}