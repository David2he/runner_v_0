if(!is_open){
	destroy_menue = false;
	is_open =! is_open;
	instance_create_depth(20, 0 -(sprite_get_height(Spr_test_menue)), -3, Obj_menue);
} else {
	is_open =! is_open;
	destroy_menue = true;
}


