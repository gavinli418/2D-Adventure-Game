/// @description Insert description here
// You can write your code in this editor
if (!fade_done) {
    fade_alpha += fade_speed;
    if (fade_alpha >= 1) {
        fade_alpha = 1;
        fade_done = true;
        room_goto(rm_winroom); 
    }
}
