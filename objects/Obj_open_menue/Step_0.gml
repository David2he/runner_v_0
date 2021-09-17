if(is_open){
	y = lerp(y, sprite_get_height(Spr_test_menue), 0.15);
	image_index = 1;
}else{
	y = lerp(y, 0, 0.15);
	image_index = 0; 
}