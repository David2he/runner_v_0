

if(!is_dead){
	draw_sprite(Spr_Health_bar_layout, 0, x, (y - sprite_height) - 10);
	draw_sprite_ext(Spr_Health_bar_fill, -1, x - (sprite_get_width(Spr_Health_bar_fill)/2), (y - sprite_height) - 10, (hp/max_hp), 1, 0, c_white, 1);

	draw_set_halign(fa_center);
	draw_text(x, (y - sprite_height) - (10 + sprite_get_height(Spr_Health_bar_layout)/2), string(hp) + "/" + string(max_hp));
}
