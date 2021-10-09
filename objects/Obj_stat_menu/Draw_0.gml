draw_self();
draw_set_font(Font_lighter);

draw_set_halign(fa_left);
draw_text(x + 15, y + 100, "Dammage");
draw_text(x + 15, y + 120, "Move speed");
draw_text(x + 15, y + 140, "Move speed");

//for(i = 1; i < 10; i++){
//	draw_text(x + 15, y + 120 + 20 * i, "Move speed");
//}

draw_set_halign(fa_right);
draw_text((x + sprite_width) - 15, y + 100, string(Obj_pj.damage));
draw_text((x + sprite_width) - 15, y + 120, string(Obj_pj.moovement_speed));
draw_text((x + sprite_width) - 15, y + 140, string(Obj_pj.gold));



draw_set_font(Font_base);