if(!player_take_it){
	
	if(percent > 1){
		percent -= 1;
		stop = true;
	} 
	
	if(!stop){
		percent += 1/60;
		image_angle += rotate_sprite;
		position = animcurve_channel_evaluate(curve, percent);

		var _start = ystart;
		var _end = ystart - yTop;

		var _distance = _end - _start;
		x = lerp(x, x_goal, Obj_create_loots.speedd);
		y = _start + (_distance * position);
	}else{
		x -= Obj_pj.moovement_speed * 6;
	}
} else {
	y = lerp(y, -20, 0.07);
	x = lerp(x, room_width/2, 0.07);
	alarm[0] = 1*room_speed;
}




