function Scr_attack(){
	var hit_frames = argument[0];
	var hits_left_arg = argument[1];
	var sprite = argument[2];
	var next_combo = argument[3];
	
	var damage = argument[4];

	if(reset_frame){
		//show_debug_message("RESET")
		Scr_handle_frame_player(Obj_pj, 0, sprite);
		hits_left = hits_left_arg;
	} 
	
	 for(var currentDamageFrame = 0; currentDamageFrame < array_length(hit_frames); currentDamageFrame++){
		if((image_index > hit_frames[currentDamageFrame][0] && image_index < hit_frames[currentDamageFrame][1]) &&(hits_left[currentDamageFrame]>0)){
			Scr_handle_damage(monster_in_fight, damage);
			hits_left[currentDamageFrame] --;
		}
	}

	if(image_index > image_number-1){
		 reset_frame = true;
			combo = next_combo
	}
}
