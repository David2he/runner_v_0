/// @function							Scr_handle_running(is_stopping);
/// @param  {bool}		is_stopping		bool handle the stop or start parralax
/// @description
function Scr_handle_running(){
	var is_stopping = argument[0];
	if(is_stopping == true){
		layer_hspeed("Background_00", 0);
		layer_hspeed("Background_01", 0);
		layer_hspeed("Background_02", 0);
		layer_hspeed("Background_03", 0);
		layer_hspeed("Background_04", 0);
		layer_hspeed("Background_05", 0);
	}else {
		Obj_pj.sprite_index = Spr_player_run;
		layer_hspeed("Background_00", -8);
		layer_hspeed("Background_01", -4);
		layer_hspeed("Background_02", -2);
		layer_hspeed("Background_03", -1);
		layer_hspeed("Background_04", -0.5);
		layer_hspeed("Background_05", -0.25);
	}
}