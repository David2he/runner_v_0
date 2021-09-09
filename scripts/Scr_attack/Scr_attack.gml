// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_attack(){
	
	if(first_attack){
		
		sprite_index = Spr_player_attack_transition;
		
		if((image_index > 0) && (reset_frame)){
			image_index = 1;
			reset_frame = false;
		}
		 if(image_index >= 3){
			Scr_handle_running(true);
		}
		
	
		if((image_index >= 1 && image_index <= 2)&& can_attack_1){
			Scr_handle_Damage(damage, Obj_monster.hp);
			can_attack_1 = false;
			show_debug_message("attack_1");
		}
		else if((image_index >= 6 && image_index <= 7)&& can_attack_2){
			Scr_handle_Damage(damage, Obj_monster.hp);
			can_attack_2 = false;
			show_debug_message("attack_2");
		}
		
		
		if(image_index >= image_number-1){
			first_attack = false;
			reset_frame = true;
			can_attack_1 = true;
			can_attack_2 = true;
			can_attack_4 = true;
			can_attack_3 = true;
		}
	}
	
	
	else if (!first_attack){
		
		show_debug_message(image_index);
		show_debug_message("attack3 = " + string(can_attack_3));
		show_debug_message("attack4 = " + string(can_attack_4));
		
		sprite_index = Spr_player_attack;
		
		
		if((image_index > 0) && (reset_frame)){
			image_index = 1;
			reset_frame = false;
		
		}
		
		if((image_index >= 3 && image_index <= 4) && can_attack_3){
			Scr_handle_Damage(damage, Obj_monster.hp); 
			show_debug_message("attack_3");
			can_attack_3 = false;

		}
		else if ((image_index >= 8 && image_index <= 9) && can_attack_4){
			Scr_handle_Damage(damage, Obj_monster.hp);
			show_debug_message(Obj_monster.hp);
			show_debug_message("attack_4");
			can_attack_4 = false;
		}

		if(image_index >= image_number-1){
			show_debug_message("------");
			can_attack_3 = true;
			can_attack_4 = true;
			reset_frame = true;
		
		}	
	}
}
