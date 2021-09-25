if(!Obj_pj.is_fighting){
	x -= 2;
	if(image_index >= image_number - 1){
		image_index = image_number - 1;
	}
	if(x < 0 - sprite_width / 2){
		instance_destroy();
	}
}else if(image_index >= image_number - 1){
	instance_destroy();
}
