// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_attack(){
	
	if(Obj_pj.first_attack){
		
		Obj_pj.sprite_index = Spr_player_attack_transition;
		
		if((Obj_pj.image_index > 0) && (Obj_pj.reset_frame)){
			Obj_pj.image_index = 1;
			Obj_pj.reset_frame = false;
		}
		 if(Obj_pj.image_index > 3){
			Scr_handle_running(true);
		}
		
	
		if((Obj_pj.image_index >= 1 && Obj_pj.image_index <= 2)&& can_attack_1){
			Scr_handle_Damage(Obj_pj.damage, Obj_monster.hp);
			can_attack_1 = false;
			show_debug_message("attack_1");
		}
		else if((Obj_pj.image_index >= 6 && Obj_pj.image_index <= 7)&& can_attack_2){
			Scr_handle_Damage(Obj_pj.damage, Obj_monster.hp);
			can_attack_2 = false;
			show_debug_message("attack_2");
		}
		
		
		if(Obj_pj.image_index >= image_number-1){
			Obj_pj.first_attack = false;
			Obj_pj.reset_frame = true;
			can_attack_1 = true;
			can_attack_2 = true;
		}
	}
	
	
	else if (!Obj_pj.first_attack){
		
		Obj_pj.sprite_index = Spr_player_attack;
		
		
		if((Obj_pj.image_index > 0) && (Obj_pj.reset_frame)){
			Obj_pj.image_index = 1;
			Obj_pj.reset_frame = false;
		
		}
		
		if((Obj_pj.image_index >= 2 && Obj_pj.image_index <= 3) && can_attack_3){
			Scr_handle_Damage(Obj_pj.damage, Obj_monster.hp);
			show_debug_message("attack_3");
			can_attack_3 = false;
		}
		else if (((Obj_pj.image_index >= 8 && Obj_pj.image_index <= 9) && can_attack_4)){
			Scr_handle_Damage(Obj_pj.damage, Obj_monster.hp);
			show_debug_message("attack_3");
			can_attack_4 = false;
		}

		if(Obj_pj.image_index >= image_number-1){
			Obj_pj.reset_frame = true;
			can_attack_3 = true;
			can_attack_4 = true;
		}	
	}
}
