if(!is_close_to_player){
	x -= 4;
}else{
	sprite_index = idle_sprite;
	if(!is_blocking){
		alarm[0] = 1;
	}
	if(is_dead){
		Obj_pj.count_enemies_cac --;
	}
}

if(is_dead){

	is_dead = !is_dead;
	instance_destroy();
}
