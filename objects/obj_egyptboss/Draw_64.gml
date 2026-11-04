/// @description Insert description here
// You can write your code in this editor
// Only draw if boss is active or alive
if (currentHp > 0 && active)
{
    var bar_width = 1000;
    var bar_height = 50;
    var bar_x = (display_get_gui_width() - bar_width) / 2; // center it
    var bar_y = 40;

    // Background bar (gray)
    draw_set_color(c_black);
    draw_rectangle(bar_x - 2, bar_y - 2, bar_x + bar_width + 2, bar_y + bar_height + 2, false);

    draw_set_color(c_black);
    draw_rectangle(bar_x, bar_y, bar_x + bar_width, bar_y + bar_height, false);

    // Health bar (red)
    var health_percent = currentHp / maxHp;
    draw_set_color(c_yellow);
    draw_rectangle(bar_x, bar_y, bar_x + bar_width * health_percent, bar_y + bar_height, false);

    // Optional: Boss name
    draw_set_color(c_white);
    draw_text(bar_x + 350, bar_y + 70, "Ghost of the Desert");
}
