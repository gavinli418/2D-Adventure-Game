/// @description Insert description here
// You can write your code in this editor
draw_set_font(Medieval_Font_winscreen);
draw_set_color(c_blue);
draw_set_halign(fa_center);
var _ver = scroll_y;

for (var i = 0; i < array_length(text); i++) {
    draw_text(display_get_gui_width()/2, _ver, text[i]);
    _ver += 40;
}
