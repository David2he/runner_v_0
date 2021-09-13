if(!down_animation){
	y = lerp(y,  ystart - 100, 0.15);
	size_supp += 0.14;
}else{
	y = lerp(y,  ystart + 20, 0.08);

	if(size_supp >= (0 - 0.07)){	
		size_supp -= 0.04;
	}
	opacity -= 0.035;
}

if(opacity <= 0){
	instance_destroy();
}

x = lerp(x, xstart * random_x, 0.004);