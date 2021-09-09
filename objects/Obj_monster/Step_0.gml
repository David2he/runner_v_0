if(!Obj_pj.close_against_player){
	x -= 4;
}


sprite_index = Spr_flying_eye;

if(is_dead){
	show_debug_message("----------------------");
	is_dead = !is_dead;
	instance_destroy();
}
