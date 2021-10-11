if(!player_take_it){
	if(percent > 1){
		percent -= 1;
		stop = true;
	} 
	if(!stop){
		percent += 1/80;
		image_angle += rotate_sprite;
		position = animcurve_channel_evaluate(curve, percent);

		var _start = ystart;
		var _end = ystart - yTop;

		var _distance = _end - _start;
		x = lerp(x, x_goal, Obj_create_loots.speedd);
		y = _start + (_distance * position);
	}else if (Obj_pj.movement_speed > 0.5){
		x -=  4;
	}
} else {
	y = lerp(y, -20, 0.07);
	x = lerp(x, room_width/2, 0.07);
}

if(x < -10 && stop){
	is_out_the_room = true;
}

if(is_out_the_room){
	y = lerp(y, -20, 0.07);
	x = lerp(x, room_width/2, 0.07);
}

if(x == room_width/2 || y < 0){
	should_be_destroyed = true;
}

if(should_be_destroyed){
	instance_destroy();
}