if(instance_exists(Obj_monster_PARENT) && !Obj_monster_PARENT.is_dead){
	close_against_player = true;
	monster_in_fight = Obj_monster_PARENT.id;
} 
