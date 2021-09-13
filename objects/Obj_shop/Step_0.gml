 

//if(hover){
//	will_be_static = false;
//	sprite_index = Spr_chest_icon_animated;
//	if(image_index >= image_number -1){
//		show_debug_message("test");
//		sprite_index = Spr_chest_icon_static_hovered;
//	}
//}else if (!hover){
//	if(will_be_static){
//		sprite_index = Spr_chest_icon_static;
//	}else{
//		sprite_index = Spr_chest_icon_animated_reverse;
//		if(image_index >= image_number -1){
//			will_be_static = true;
//		}
//	}
	
//}


sprite_index = Spr_chest_icon_static;

if(hover && !end_animation){
	sprite_index = Spr_chest_icon_animated;
	if(image_index >= image_number -1){
		end_animation = true;
	}
} else if(hover && end_animation){
	sprite_index = Spr_chest_icon_static_hovered;
} else if(!hover){
	end_animation = false;
}
