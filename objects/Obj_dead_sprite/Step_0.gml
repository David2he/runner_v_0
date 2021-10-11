if((Obj_pj.movement_speed/Obj_pj.initial_movement_speed) >= 0.1){
	x -= 3;
	if(image_index >= image_number - 1){
		image_index = image_number - 1;
	}
	if(x < 0 - sprite_width / 2){
		instance_destroy();
	}
}else if(image_index >= image_number - 1){
	image_index = image_number - 1;
	image_alpha -= 0.07;
	if(image_alpha <= 0) instance_destroy();
}