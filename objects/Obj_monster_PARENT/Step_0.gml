if(!is_close_to_player){
	x -= 4;
}else{
	sprite_index = idle_sprite;
	if(!is_blocking){
		alarm[0] = 1;
	}
	
}

if(is_dead){
	if(is_close_to_player){
		Obj_pj.count_enemies_cac --;
	}
	Obj_pj.alternate_att_run = !Obj_pj.alternate_att_run;
	is_dead = !is_dead;
	instance_destroy();
}
