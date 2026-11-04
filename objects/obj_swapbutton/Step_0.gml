/// @description Insert description here
// You can write your code in this editor
// Get same GUI coordinates as in Draw GUI
// Get same GUI coordinates as in Draw GUI
var gui_mouse_x = device_mouse_x_to_gui(0);
var gui_mouse_y = device_mouse_y_to_gui(0);

if (gui_mouse_x >= btn_x && gui_mouse_x <= btn_x + btn_width &&
    gui_mouse_y >= btn_y && gui_mouse_y <= btn_y + btn_height) {
    
    image_index = 1;

    if (mouse_check_button_pressed(mb_left)) 
	{
        if(obj_player.selectedpotion == spr_healthpotion)
		{
			obj_player.selectedpotion = spr_strengthpotion;
		}
		else if(obj_player.selectedpotion == spr_strengthpotion)
		{
			obj_player.selectedpotion = spr_healthpotion;	
		}
    }
} else {
    image_index = 0;
}
