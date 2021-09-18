if(!Obj_pj.close_against_player){
	x -= 4;
}else{
	time -= 0.05;
}

if(is_dead){
	is_dead = !is_dead;
	instance_destroy();
}

sprite_index = Spr_flying_eye;