if(instance_exists(Obj_monster_PARENT) && close_against_player){
		first_attack = damage + movement_speed/5;
		first_attack_critted = (damage + movement_speed/5) * crit_bonus_damage
		

	if(will_be_a_crit && first_attack_critted < Obj_monster_PARENT.max_hp && combo == 0){
		combo = 1;
	} else if (first_attack < Obj_monster_PARENT.max_hp && combo == 0 && !will_be_a_crit){
		combo = 1;
	}
	if((movement_speed < initial_movement_speed / 10) && combo == 0){
		combo = 1;
	}
		

	switch(combo){
		case 0:
			reduce_movement_speed = decrementor_speed_little;
			is_fighting = true;
			Scr_attack([[1,2]], [1],asset_get_index(string("Spr_player_attack_run_") + string(alternate_att_run)), 0, first_attack);
			break;
		case 1:
			reduce_movement_speed = decrementor_speed_strong;
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
	is_running_back = false;
}


	
if(is_fighting){
	Scr_handle_running(true);
	if(movement_speed >= 0 && !is_running_back){
			movement_speed = lerp(movement_speed, 0, reduce_movement_speed);
			
	}else if(movement_speed < 0){
		is_running_back = true;
		movement_speed = 0;
	}
	
	if(bonus_early_flor_speed > 0){
		bonus_early_flor_speed = lerp(bonus_early_flor_speed, 0, 0.1);
	} else {
		bonus_early_flor_speed = 0;
	}
	
}else if (!is_fighting){
	Scr_handle_running(false);
	if(movement_speed < initial_movement_speed){
		movement_speed += lerp( 0, initial_movement_speed, incrementor_speed_restart);
	} else if(movement_speed > initial_movement_speed){
		movement_speed = initial_movement_speed;
	}
	
	if(bonus_early_flor_speed < -6){
		bonus_early_flor_speed = lerp(bonus_early_flor_speed, -6, 0.1);
	} else {
		bonus_early_flor_speed = -6;
	}
}

running_counter += Obj_pj.movement_speed / room_speed;


y = global.flor - (sprite_get_height(Spr_player_idle)*global.scale_ratio);
image_xscale = 	global.scale_ratio;
image_yscale = global.scale_ratio;