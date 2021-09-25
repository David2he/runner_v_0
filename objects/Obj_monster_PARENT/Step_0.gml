if(!is_close_to_player){
	x -= 4;
	sprite_index = running_sprite;
}else if (!is_dead){
	sprite_index = idle_sprite;
	if(!is_blocking){
		alarm[0] = 1;
	}
}

if(hitted){
	color_blend = c_red;
	hitted = false;
	alarm[1] = room_speed * 0.15;
	sprite_index = hited_sprite;
}

if(sprite_index == hited_sprite){
	if(image_index >= image_number - 1){
		sprite_index = idle_sprite
	}
}

if(is_dead){
	monster_dead = instance_create_depth(x,y,depth, Obj_dead_sprite)
	monster_dead.sprite_index = dead_sprite
	
	if(is_close_to_player){
		Obj_pj.count_enemies_cac --;
	}
	Obj_pj.alternate_att_run = !Obj_pj.alternate_att_run;
	is_dead = !is_dead;
	instance_destroy();

}