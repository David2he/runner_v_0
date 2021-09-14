if(!is_dead){
	draw_sprite(Spr_health_bar_layout,  -1, x, (y - sprite_height / 2));
	draw_sprite_ext(Spr_health_bar_fill, -1, x - (sprite_get_width(Spr_health_bar_fill)/2), (y - sprite_height / 2), (hp/max_hp), 1, 0, c_white, 1);

	draw_set_valign(fa_middle);
	draw_set_halign(fa_left);
	draw_text((x + 20)  - (sprite_get_width(Spr_health_bar_fill)/2), y - (sprite_height / 2), string(hp) + "/" + string(max_hp));
	
	
	if(time_allowed){
		draw_sprite(
			Spr_time_layout,
			-1,
			x,
			(y - sprite_height / 2)- sprite_get_height(Spr_health_bar_layout)
		);
	
		if(Obj_pj.close_against_player){
			draw_sprite_ext(
				Spr_time_fill,
				-1,
				x - (sprite_get_width(Spr_health_bar_layout)/2),
				(y - sprite_height / 2)- sprite_get_height(Spr_health_bar_layout),
				(time/max_time), 1, 0, c_white, 1
			);
		}else{
			draw_sprite_ext(
				Spr_time_fill,
				-1,
				x - (sprite_get_width(Spr_health_bar_layout)/2),
				(y - sprite_height / 2)- sprite_get_height(Spr_health_bar_layout),
				(time/max_time), 1, 0, c_white, 1
			);
		}
	
	}
	
}

