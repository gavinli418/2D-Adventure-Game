/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_shift) && (keyboard_check(ord("A")) || keyboard_check(ord("D"))) && sindex < sindex_max) {
    sindex++; // Reduce stamina
    alarm[1] = 60; // Restart the alarm only if Shift and A/D are still held
} 
else {
    alarm[1] = 0; // Stop the alarm if Shift is released
}



