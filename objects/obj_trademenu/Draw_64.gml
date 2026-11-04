/// @description Insert description here
// You can write your code in this editor
if (visible)
{
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(1000, 200, 2200, 700, false);
    draw_set_alpha(1);
    
    draw_set_color(c_yellow)
    draw_text(1020, 220, "Trader's Wares");
	draw_sprite(spr_arrowbundle, 0, 1083, 342);
	draw_sprite(spr_healthpotionicon, 0, 1080, 400);
	draw_sprite(spr_strengthpotionicon, 0, 1080, 458);

    for (var i = 0; i < array_length(items); i++)
    {
        var item = items[i];
        var s = 320 + i * 60;
        if (i == selected) draw_text(1020, s, ">");
        draw_text(1120, s, item.name + " - " + string(item.price) + " coins");
    }

    draw_text(1900, 220, "Your Coins: " + string(COINS));
}
