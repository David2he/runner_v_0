if(!is_close_to_player){
	x -= 4;
}else{

}

if(is_dead){
	is_dead = !is_dead;
	instance_destroy();
}
