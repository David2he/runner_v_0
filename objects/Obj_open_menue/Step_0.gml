if(is_open){
	y = lerp(y, sprite_get_height(Spr_menu_pannel), Obj_open_menue.speed_lerp);
	image_index = 1;
}else{
	y = lerp(y, 0, Obj_open_menue.speed_lerp);
	image_index = 0; 
}

if(destroy_menue && instance_exists(Obj_menue)){
	if(Obj_menue.y < -Obj_menue.sprite_height){
		Scr_handle_instance_menu(true);
	}
}

x = (window_get_width() / 2) - (sprite_width / 2);