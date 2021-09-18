if(!is_open){
	destroy_menue = false;
	is_open =! is_open;
	Scr_handle_instance_menu(false);
} else {
	is_open =! is_open;
	destroy_menue = true;
}



 