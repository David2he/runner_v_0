if(!Obj_open_menue.destroy_menue){
	y = lerp(y, sprite_get_height(Spr_menu_pannel) - (28  +sprite_height), Obj_open_menue.speed_lerp);
}else{
	y = lerp(y, -(sprite_height + 1), Obj_open_menue.speed_lerp);
}
