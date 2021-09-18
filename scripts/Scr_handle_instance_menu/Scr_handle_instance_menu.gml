// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_handle_instance_menu(){
	var delete_all = argument[0];

	var Menu = Obj_menue;
	var shop_button = Obj_button_shop;
	var upgrade_button = Obj_button_upgrade;
	
	var x_start_menu = 20;
	var margin_for_first_button = 50;
	var margin_for_button = sprite_get_width(Spr_button_shop) + 30;
	var x_middle_menu = (x_start_menu + (sprite_get_width(Spr_menu_pannel)/2)) - 33
	
	
	if(delete_all){
		instance_destroy(Obj_menue);
		instance_destroy(Obj_button_shop);
		instance_destroy(Obj_button_upgrade);
	} else {
		instance_create_depth(x_start_menu,
			0 -(sprite_get_height(Spr_menu_pannel)),
			-3,
			Menu
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
	}
}