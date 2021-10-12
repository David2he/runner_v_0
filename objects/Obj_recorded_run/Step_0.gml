if(instance_exists(Obj_menue)){
	if(!Obj_open_menue.destroy_menue){
	y = lerp(y, (sprite_get_height(Spr_menu_pannel) - sprite_height), Obj_open_menue.speed_lerp);
	}else{
		y = lerp(y, 0 - sprite_height, Obj_open_menue.speed_lerp);
	}
}

//running_counter += Obj_pj.movement_speed / room_speed;
//x = (window_get_width() / 1.5) - (sprite_width / 2);