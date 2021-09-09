
function Scr_handle_Damage(){
	var player_damage = argument[0];
	var hp_monster = argument[1];
	show_debug_message("-----------------------------");
	show_debug_message(Obj_monster.hp);
	show_debug_message("-----------");
	Obj_monster.hp -= player_damage
	show_debug_message(Obj_monster.hp);
	show_debug_message("-----------------------------");
	if(Obj_monster.hp <= 0){

		Obj_pj.can_attack_2 = true;
		Obj_pj.can_attack_1 = true;
		Obj_pj.reset_frame = true;
		Obj_pj.first_attack = true;
		close_against_player = false;
		Obj_monster.is_dead = true;
	}
}