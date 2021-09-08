
function Scr_handle_Damage(){
	var player_damage = argument[0];
	var hp_monster = argument[1];
	Obj_monster.hp -= player_damage
	if(Obj_monster.hp <= 0){
		Obj_monster.is_dead = true;
	}
}