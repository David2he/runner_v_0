if(instance_exists(Obj_monster_PARENT) && close_against_player){
		first_attack = damage + moovement_speed/5;
		first_attack_critted = (damage + moovement_speed/5) * crit_bonus_damage
		

	if(will_be_a_crit && first_attack_critted < Obj_monster_PARENT.max_hp && combo == 0){
		combo = 1;
	} else if (first_attack < Obj_monster_PARENT.max_hp && combo == 0 && !will_be_a_crit){
		combo = 1;
	}
	if((moovement_speed < initial_moovement_speed / 10) && combo == 0){
		combo = 1;
	}
		
		
	
	switch(combo){
		case 0:
			reduce_moovement_speed = decrementor_speed_little;
			is_fighting = true;
			Scr_attack([[1,2]], [1],asset_get_index(string("Spr_player_attack_run_") + string(alternate_att_run)), 0, first_attack);
			break;
		case 1:
			reduce_moovement_speed = decrementor_speed_strong;
			is_fighting = true;
			Scr_attack([[1,2]], [1,1], Spr_player_attack_transition_1, 2, first_attack);
			break;
		case  2:
			Scr_attack([[2,3]], [1,1], Spr_player_attack_transition_2, 3, damage);
			break;
		case 3:
			Scr_attack([[2,3]], [1,1], Spr_player_attack_1, 4, damage);
			break;
		case 4:
			Scr_attack([[2 ,3]], [1,1], Spr_player_attack_2, 3, damage);
			break;
	}

} else if (!close_against_player && image_index >= image_number-1){
	is_fighting = false;
	reset_frame = true;
	count_enemies_cac = 0;
	is_running_back = false;
}


	
if(is_fighting){
	Scr_handle_running(true);
	if(moovement_speed >= 0 && !is_running_back){
			moovement_speed = lerp(moovement_speed, 0, reduce_moovement_speed);
	}else if(moovement_speed < 0){
		is_running_back = true;
		moovement_speed = 0;
	}
}else if (!is_fighting){
	Scr_handle_running(false);
	if(moovement_speed < initial_moovement_speed){
		moovement_speed += lerp( 0, initial_moovement_speed, incrementor_speed_restart);
	} else if(moovement_speed > initial_moovement_speed){
		moovement_speed = initial_moovement_speed;
	}
}
