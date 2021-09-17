//sprite_index = Spr_chest_icon_static;

//if(hover && !end_animation){
//	sprite_index = Spr_chest_icon_animated;
//	if(image_index >= image_number -1){
//		end_animation = true;
//	}
//} else if(hover && end_animation){
//	sprite_index = Spr_chest_icon_static_hovered;
//} else if(!hover){
//	end_animation = false;
//}


if(hover && !static_hovered){
	have_been_animated = true;
	sprite_index = Spr_chest_icon_animated;
	if(image_index >= image_number -1){
		static_hovered = true;
	}
} else if(hover && static_hovered){
	image_index = 0;
	sprite_index = Spr_chest_icon_static_hovered;
} else if (!hover && have_been_animated){
	static_hovered = false;
	sprite_index = Spr_chest_icon_animated_reverse;
	if(image_index >= image_number -1){
		have_been_animated = false;
	}
} else if(!hover && !have_been_animated){
	image_index = 0;
	sprite_index = Spr_chest_icon_static;
}
