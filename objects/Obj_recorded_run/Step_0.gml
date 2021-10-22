if(instance_exists(Obj_menue)){
	if(!Obj_open_menue.destroy_menue){
	y = lerp(y, (sprite_get_height(Spr_menu_pannel) - sprite_height), Obj_open_menue.speed_lerp);
	}else{
		y = lerp(y, 0 - sprite_height, Obj_open_menue.speed_lerp);
	}
}
