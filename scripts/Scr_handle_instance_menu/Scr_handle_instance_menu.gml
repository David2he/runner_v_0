function Scr_handle_instance_menu(){
	var delete_all = argument[0];

	var Menu = Obj_menue;
	var shop_button = Obj_button_shop;
	var upgrade_button = Obj_button_upgrade;
	var open_stats = Obj_open_stats;
	var record_run = Obj_recorded_run;
	
	var x_start_menu = window_get_width()/2 - sprite_get_width(Spr_menu_pannel)/2;
	var margin_for_first_button = 50;
	var margin_for_button = sprite_get_width(Spr_button_shop) + 30;
	
	var loop_array = 0;
	var array_of_menu = [
		[
			x_start_menu,
			0 -sprite_get_height(Spr_menu_pannel),
			-3,
			Menu
		],
		
		[
			x_start_menu + 40,
			0 - sprite_get_height(Spr_menu_pannel),
			-3,
			record_run
		],
		[
			x_start_menu + margin_for_first_button,
			0 - sprite_get_height(Spr_button_shop),
			-4,
			shop_button
		],
		[
			x_start_menu + margin_for_first_button + margin_for_button,
			0 - sprite_get_height(Spr_button_shop),
			-4,
			upgrade_button
		],
		[
			x_start_menu + 639,
			0 - sprite_get_height(Spr_menu_pannel),
			-4,
			open_stats
		],
		
	]
	
	if(delete_all){
		for(loop_array = 0; loop_array < array_length(array_of_menu); loop_array++){
			instance_destroy(array_of_menu[loop_array][3]);
		}
	} else {
		for(loop_array = 0; loop_array < array_length(array_of_menu); loop_array++){
			instance_create_depth(
				array_of_menu[loop_array][0],
				array_of_menu[loop_array][1],
				array_of_menu[loop_array][2],
				array_of_menu[loop_array][3],
			)
		}
	}
}