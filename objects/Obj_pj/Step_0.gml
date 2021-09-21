if(instance_exists(Obj_monster) && close_against_player){
	if((damage < Obj_monster.max_hp) && combo = 0){
		combo = 1;
	}

	switch(combo){
		case 0:
			Scr_attack([[1,2]], [1], Spr_player_attack_run, 0);
			break;
		case 1:
			is_fighting = true;
			Scr_attack([[1,2]], [1,1], Spr_player_attack_transition_1, 2);
			Scr_handle_running(true);
			break;
		case 2:
			Scr_attack([[2,3]], [1,1], Spr_player_attack_transition_2, 3);
			break;
		case 3:
			Scr_attack([[2,3]], [1,1], Spr_player_attack_1, 4);
			break;
		case 4:
			Scr_attack([[2 ,3]], [1,1], Spr_player_attack_2, 3);
			break;
	}

} else if (!close_against_player && image_index >= image_number-1){
	is_fighting = false;
	reset_frame = true;
	Scr_handle_running(false);
}


