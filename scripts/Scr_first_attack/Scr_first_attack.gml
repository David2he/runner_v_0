
function Scr_first_attack(){
	var hp_monster = argument[0];
	var player_dammage = argument[1];

	
	Obj_pj.sprite_index = Spr_player_attack_run;
	if(player_dammage >= hp_monster){
		if((Obj_pj.image_index > 0) && (Obj_pj.reset_frame > 0)){
			show_debug_message("IN");
			Obj_pj.image_index = 1;
			Obj_pj.reset_frame = 0;
		}
		if(Obj_pj.image_index >= 1){
			Obj_monster.sprite_index = 0;
		}
		if(Obj_pj.image_index >= image_number-1){
			Obj_pj.start_fight = false;
			Obj_pj.close_against_player = false;
			instance_destroy(Obj_monster);
			Obj_pj.sprite_index = Spr_player_run;
			//Obj_pj.reset_frame  = 0;
		}
	}
	show_debug_message("------------");
	//show_debug_message("frame :" + string(Obj_pj.image_index));
	//show_debug_message("max :" + string(Obj_pj. image_number));
	//show_debug_message(string(Obj_pj. image_number));
}

