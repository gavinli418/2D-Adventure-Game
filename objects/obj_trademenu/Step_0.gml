/// @description Insert description here
// You can write your code in this editor
if (visible)
{
    if (keyboard_check_pressed(vk_down)) selected = (selected + 1) mod array_length(items);
    if (keyboard_check_pressed(vk_up)) selected = (selected - 1 + array_length(items)) mod array_length(items);

    if (keyboard_check_pressed(vk_enter))
    {
        var item = items[selected];
       
		var msg = "";

		if (COINS >= item.price)
		{				
			COINS -= item.price;
			msg	= "Bought: " + item.name;
			success = true;
			if(item.name == "Arrows")
			{
				ARROWS += 10;
			}
			else if(item.name == "Health Potion")
			{
				obj_player.potionindex = 0;
			}
			else if(item.name == "Strength Potion")
			{
				obj_player.spotionindex = 0;
			}
		}
		else
		{
			msg = "Not enough coins!";
			success = false;
		}

		var inst = instance_create_layer(0, 0, "Texts", obj_fademessage);
		inst.message = msg;
  
    }

    if (keyboard_check_pressed(vk_escape) || (abs(obj_trader.x-obj_player.x) >= 200 || abs(obj_trader.y-obj_player.y) >= 200))
    {
        visible = false;
        instance_destroy(); // close menu
    }
}

