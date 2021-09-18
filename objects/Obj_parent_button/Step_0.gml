if(!Obj_open_menue.destroy_menue){
	y = lerp(y, (sprite_get_height(Spr_menu_pannel)/2) - (sprite_get_height(Spr_button_shop)/2), Obj_open_menue.speed_lerp);
}else{
	y = lerp(y, -(sprite_height + 1), Obj_open_menue.speed_lerp);
}
