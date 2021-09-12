//if(y > ystart - 1000){

//	if(y < ystart - 35)	y -= 4;
//	if(y > ystart - 35)	y -= 8;
//	if(y < ystart - 70) can_down = true;
//} if(can_down){
//	y +=8;
//	opacity -= 0.05;
//}


//if(y > ystart - 1000){
//	y = lerp(y, ystart - 100, 0.2);
//	if(y <= ystart -50){
//		opacity -= 0.04;
//	}
//} 

y += text_speed;
text_speed += 0.15;

if(initial_growth < alarm[0]){
	size_supp += 0.06;
}else{
	if(size_supp > 1){
		size_supp -= 0.03
	}
}

if(is_disappearing){
	image_alpha =- 0.05;
}

if(image_alpha <= 0){
	instance_destroy();
}


show_debug_message(y);

