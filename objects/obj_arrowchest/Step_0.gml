/// @description Insert description here
// You can write your code in this editor

// Only if chest is not opened
if (!opened) {
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    if (dist <= 100) {
        // If close enough and button hasn't been created yet
        if (!instance_exists(e_button_instance)) {
            e_button_instance = instance_create_layer(x - 15, y - 40, "Instances_buttons", obj_Ebutton);
            e_button_instance.parent_chest = id; // let the button know which chest it belongs to
        }
    } else {
        // If player moves too far, and button exists, destroy it
        if (instance_exists(e_button_instance)) {
            instance_destroy(e_button_instance);
            e_button_instance = noone;
        }
    }
}
