/// @function							Scr_handle_running(is_stopping);
/// @param  {bool}		is_stopping		bool handle the stop or start parralax
/// @description
function Scr_handle_running(){
	var is_stopping = argument[0];
	var run_speed = -Obj_pj.movement_speed / 10;
	var bonus_early_flor_speed = -6;
	flor_speed = (run_speed * 3) + bonus_early_flor_speed;
	
	if(is_stopping == false){
		Obj_pj.sprite_index = Spr_player_run;
	}
	
		layer_hspeed("Background_00", (run_speed * 3) + bonus_early_flor_speed);
		layer_hspeed("Background_01", run_speed *  2);
		layer_hspeed("Background_02", run_speed *  1);
		layer_hspeed("Background_03", run_speed *  0.5);
		layer_hspeed("Background_04", run_speed *  0.25);
		layer_hspeed("Background_05", run_speed *  0.08);

		
}
