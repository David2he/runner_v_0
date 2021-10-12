if(!is_dead){
	draw_set_font(Font_base);
	draw_sprite(Spr_health_bar_layout,  -1, x, (y - sprite_height * 0.75));
	draw_sprite_ext(Spr_health_bar_fill, -1, x - (sprite_get_width(Spr_health_bar_fill)/2), (y - sprite_height * 0.75), (hp/max_hp), 1, 0, c_white, 1);

	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	draw_text((x + 20)  - (sprite_get_width(Spr_health_bar_fill)/2), y - (sprite_height * 0.75), string(hp) + "/" + string(max_hp));	
}