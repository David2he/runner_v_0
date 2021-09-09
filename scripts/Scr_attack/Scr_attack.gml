// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_attack(){
	var dammage_player = argument[0];
	var max_hp_monster = argument[1];
	var hp_monster = argument[2];
	
	
	if(dammage_player >= max_hp_monster){
		Scr_handle_frame_player(Obj_pj, 0, Spr_player_attack_run);
		if(image_index > 1 && image_index < 3){
			Scr_handle_Damage(Obj_monster, Obj_pj.damage);
			
		}
	 }
	
}
