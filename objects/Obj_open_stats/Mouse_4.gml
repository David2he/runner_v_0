if(!stat_open){
	image_index = 1;
	stat_open = !stat_open;
	instance_create_depth(Obj_menue.x + 575, y + 20, -3, Obj_stat_menu);
} else {
	image_index = 0;
	stat_open = !stat_open;
	instance_destroy(Obj_stat_menu);
}