/// @function							Scr_handle_running(is_stopping);
/// @param  {bool}		is_stopping		bool handle the stop or start parralax
/// @description
function Scr_handle_running(){
	var is_stopping = argument[0];
	var run_speed = Obj_pj.moovement_speed
	var flor_speed = -6;
	
	
	if(is_stopping == false){
		Obj_pj.sprite_index = Spr_player_run;
	}
	
		layer_hspeed("Background_00", run_speed * flor_speed);
		layer_hspeed("Background_01", run_speed * - 1);
		layer_hspeed("Background_02", run_speed * - 0.5);
		layer_hspeed("Background_03", run_speed * - 0.5);
		layer_hspeed("Background_04", run_speed * - 0.25);
		layer_hspeed("Background_05", run_speed * - 0.1);
		
}
