if(close_against_player && instance_exists(Obj_monster)){
	if((Obj_monster.hp <= damage) && first_attack){
		Scr_OS_attack();
	} else{
		Scr_attack();
	}
} else {
		Scr_handle_running(false);
}


	