 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_handle_frame_player(){
	
	var target = argument[0];
	//var frame_to_start = argument[1];
	var sprite = argument[2];


	if(target.image_index > 0){
		target.image_index = 0;
		 Obj_pj.reset_frame = false;
	} 
	target.sprite_index = sprite;
}