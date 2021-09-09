
function Scr_OS_attack(){
	Obj_pj.sprite_index = Spr_player_attack_run;
	#region OS ENEMY
		if((Obj_pj.image_index > 0) && (Obj_pj.reset_frame)){
			Obj_pj.image_index = 0;
			Obj_pj.reset_frame = false;
		}
		if(Obj_pj.image_index >= 1){
			Obj_monster.sprite_index = 0;
		}
		if(Obj_pj.image_index >= image_number-1){
			Obj_pj.close_against_player = false;
			Scr_handle_Damage(Obj_monster.hp, Obj_monster.hp);
			Obj_pj.sprite_index = Spr_player_run;
		}
	#endregion
}

