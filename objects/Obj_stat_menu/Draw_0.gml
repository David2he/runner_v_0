draw_self();
draw_set_font(Font_lighter);

draw_set_halign(fa_left);
draw_text(x + 15, y + 100, "Dammage");
draw_text(x + 15, y + 120, "Move speed");
draw_set_halign(fa_right);
draw_text((x + sprite_width) - 15, y + 100, "20");
draw_text((x + sprite_width) - 15, y + 120, "0.5");


draw_set_font(Font_base);