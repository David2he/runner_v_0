// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_attack(){
	var hit_frames = argument[0];
	var hits_left_arg = argument[1];
	var sprite = argument[2];
	var next_combo = argument[3];

	if(reset_frame){
		//show_debug_message("RESET")
		Scr_handle_frame_player(Obj_pj, 0, sprite);
		hits_left = hits_left_arg;
	} 
	
	 for(var currentDamageFrame = 0; currentDamageFrame < array_length(hit_frames); currentDamageFrame++){
		if((image_index > hit_frames[currentDamageFrame][0] && image_index < hit_frames[currentDamageFrame][1]) &&(hits_left[currentDamageFrame]>0)){
			//show_debug_message(combo);
			Scr_handle_Damage(Obj_monster_PARENT, Obj_pj.damage);
			hits_left[currentDamageFrame] --;
		}
	}

	if(image_index > image_number-1){
		 reset_frame = true;
			combo = next_combo
	}
}
