if(instance_exists(Obj_monster) && close_against_player) {
	if((damage < Obj_monster.max_hp) && combo = 0){
		combo = 1;
	}

	switch(combo){
		case 0:
			Scr_attack([[1,2]], [1], Spr_player_attack_run);
			break;
		case 1:
			Scr_attack([[2,3], [7,8]], [1,1], Spr_player_attack_transition);
			Scr_handle_running(true);
			break;
		case 2:
			Scr_attack([[2,3], [7,8]], [1,1], Spr_player_attack);
			break;
	}

	
	
} else if (reset_frame){
	Scr_handle_running(false);
}

if(image_index > image_number-1){
	reset_frame = true;
	if(combo == 1){
		combo = 2
	}
}