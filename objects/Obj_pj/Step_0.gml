if(close_against_player && instance_exists(Obj_monster)){
	if((damage >= Obj_monster.max_hp) && first_attack){
		show_debug_message("??");
		Scr_OS_attack();
	} else{
		Scr_attack();
	}
} else {
		Scr_handle_running(false);
}


	