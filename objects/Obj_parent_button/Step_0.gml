if(Obj_open_menue.destroy_menue){
	y = lerp(y, -(sprite_height + 1), 0.15);
	if(y < -sprite_height){
		instance_destroy();
	}
}else{
	y = lerp(y, 0, 0.15);
}