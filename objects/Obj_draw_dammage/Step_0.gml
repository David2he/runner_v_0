if(!down_animation){
	y = lerp(y,  ystart - 200, 0.1);
	size_supp += 0.1;
}else{
	y = lerp(y,  ystart + 400, 0.02);

	if(size_supp >= (0 - 0.07)){	
		size_supp -= 0.14;
	}
}

if(size_supp <= 0.1){
	instance_destroy();
}

x = lerp(x, xstart * random_x, 0.004);