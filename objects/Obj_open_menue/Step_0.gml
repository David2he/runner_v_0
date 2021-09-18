if(is_open){
	y = lerp(y, sprite_get_height(Spr_test_menue), Obj_open_menue.speed_lerp);
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