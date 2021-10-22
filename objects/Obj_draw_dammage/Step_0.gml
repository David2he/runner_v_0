//if(!down_animation){
//	y = lerp(y,  ystart - 200, 0.1);
//	size_supp += 0.1;
//}else{
//	y = lerp(y,  ystart + 400, 0.02);

//	if(size_supp >= (0 - 0.07)){	
//		size_supp -= 0.14;
//	}
//}

//if(size_supp <= 0.1){
//	instance_destroy();
//}

//x = lerp(x, xstart * random_x, 0.004);



if(percent > 1){
	instance_destroy();
} else {
	percent  += 1/60;
	position = animcurve_channel_evaluate(curve, percent);
	var _start = ystart;
	var _end =  ystart - 200;
	var _distance = _end - _start;
	
	var _size_start = 1;
	var _size_end = 2;
	var size = _size_end - _size_start;
	
	y = _start + (_distance * position);
	size_supp = _size_start + (size * position);

}

	