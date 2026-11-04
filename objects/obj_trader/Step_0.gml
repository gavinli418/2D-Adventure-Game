/// @description Insert description here
// You can write your code in this editor
var min_dist = 99999;
var closest = noone;

with (obj_traderspawnpoint)
{
    var d = point_distance(x, y, obj_player.x, obj_player.y);
    if (d < min_dist)
	{
        min_dist = d;
        closest = id;
    }
}

if (closest != noone)
{
    x = closest.x;
    y = closest.y;
}

var dist = point_distance(x, y, obj_player.x, obj_player.y);
if(abs(x-obj_player.x) <= 400 && abs(y-obj_player.y) <= 400)
{
	
	if(obj_player.x > x)
	{
		sprite_index = spr_traderwaveright;
		image_speed = 0.3;
	}
	if(obj_player.x < x)
	{
		sprite_index = spr_traderwaveleft;
		image_speed = 0.3;
	}
}
else
{
	if(obj_player.x > x)
	{
		sprite_index = spr_traderidleright;
		
	}
	if(obj_player.x < x)
	{
		sprite_index = spr_traderidleleft;
		
	}	
}
if (dist <= 200 && !keyboard_check_pressed(vk_escape))
{
    // If close enough and button hasn't been created yet
	
	if (!instance_exists(e_button_instance)) 
	{
		e_button_instance = instance_create_layer(x - 12, y - 80, "Instances_buttons", obj_Ebuttontrader);
		
    }
	if (instance_exists(e_button_instance) && e_button_instance.pressed)
	{
			
		if(obj_player.x > x)
		{
			sprite_index = spr_tradertradesright;
			image_speed = 0.3;
		}
		else if(obj_player.x < x)
		{
			sprite_index = spr_tradertradesleft;	
			image_speed = 0.3;
		}
			
	}


} 
else 
{
    // If player moves too far, and button exists, destroy it
	
	if (instance_exists(e_button_instance)) 
	{
		
		instance_destroy(e_button_instance);
		e_button_instance = noone;
    }
	
	
}
