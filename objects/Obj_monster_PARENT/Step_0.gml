if(!is_close_to_player){
	x -= 4;
	show_debug_message("run");
}else{
	sprite_index = Spr_golem_idle;
}

if(is_dead){
	is_dead = !is_dead;
	instance_destroy();
}
