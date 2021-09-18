if(!Obj_open_menue.destroy_menue){
	y = lerp(y, 0, Obj_open_menue.speed_lerp);
}else{
	y = lerp(y, -(sprite_height + 1), Obj_open_menue.speed_lerp);
}
