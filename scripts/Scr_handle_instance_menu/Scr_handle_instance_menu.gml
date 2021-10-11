// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
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
	
	
	if(delete_all){
		instance_destroy(Menu);
		instance_destroy(shop_button);
		instance_destroy(upgrade_button);
		instance_destroy(open_stats);
		instance_destroy(record_run);
	} else {
		instance_create_depth(x_start_menu,
			0 -(sprite_get_height(Spr_menu_pannel)),
			-3,
			Menu
		);
		
		instance_create_depth(x_start_menu * 0.75,
			0 -(sprite_get_height(Spr_menu_pannel)),
			-3,
			record_run
		);
		
		instance_create_depth(x_start_menu + margin_for_first_button,
			0 - sprite_get_height(Spr_button_shop),
			-4,
			shop_button
		);
		
		instance_create_depth(x_start_menu + margin_for_first_button + margin_for_button,
			0 - sprite_get_height(Spr_button_shop),
			-4,
			upgrade_button
		);
		
		instance_create_depth(x_start_menu + 639,
			0 - sprite_get_height(Spr_menu_pannel),
			-4,
			open_stats
		);
	}
}