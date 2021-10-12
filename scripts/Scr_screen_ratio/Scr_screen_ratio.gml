
function Scr_screen_ratio(){
	
	var ratio = argument[0];
	var spawn_monster = 0;
	var bg_00 = layer_get_id("Background_00");
	var bg_01 = layer_get_id("Background_01");
	var bg_02 = layer_get_id("Background_02");
	var bg_03 = layer_get_id("Background_03");
	var bg_04 = layer_get_id("Background_04");
	var bg_05 = layer_get_id("Background_05");
	
	var id_bg_00  = layer_background_get_id(bg_00);
	var id_bg_01  = layer_background_get_id(bg_01);
	var id_bg_02  = layer_background_get_id(bg_02);
	var id_bg_03  = layer_background_get_id(bg_03);
	var id_bg_04  = layer_background_get_id(bg_04);
	var id_bg_05  = layer_background_get_id(bg_05);
	
	
	if(ratio){
		layer_background_sprite(id_bg_00, Spr_bg_desert_02__1080);
		layer_background_sprite(id_bg_01, Spr_bg_desert_00__1080);
		layer_background_sprite(id_bg_02, Spr_bg_desert_01__1080);
		layer_background_sprite(id_bg_03, Spr_bg_desert_03__1080);
		layer_background_sprite(id_bg_04, Spr_bg_desert_05__1080);
		layer_background_sprite(id_bg_05, Spr_bg_desert_04__1080);
		
		layer_y(layer_get_id("Background_00"), 70);
		layer_y(layer_get_id("Background_01"), -140);
		layer_y(layer_get_id("Background_02"), -210);
		layer_y(layer_get_id("Background_03"), -210);
		layer_y(layer_get_id("Background_04"), 0);
		layer_y(layer_get_id("Background_05"), -210);
		
		global.flor = 945;
		global.scale_ratio = 1.5;
		display_set_gui_size(1920, 1080);
		spawn_monster = 1920;
		
	}else if (!ratio){
		layer_background_sprite(id_bg_00, Spr_bg_desert_02__720);
		layer_background_sprite(id_bg_01, Spr_bg_desert_00__720);
		layer_background_sprite(id_bg_02, Spr_bg_desert_01__720);
		layer_background_sprite(id_bg_03, Spr_bg_desert_03__720);
		layer_background_sprite(id_bg_04, Spr_bg_desert_05__720);
		layer_background_sprite(id_bg_05, Spr_bg_desert_04__720);
		
		layer_y(layer_get_id("Background_00"), 210);
		layer_y(layer_get_id("Background_01"), 100);
		layer_y(layer_get_id("Background_02"), 80);
		layer_y(layer_get_id("Background_03"), 60);
		layer_y(layer_get_id("Background_04"), 0);
		layer_y(layer_get_id("Background_05"), 0);
		
		global.scale_ratio = 1;
		global.flor = 820;
		display_set_gui_size(850, 900);
		spawn_monster = 850;
	}
	
		Obj_open_menue.is_open = false;
		if(instance_exists(Obj_loots)){
			Obj_loots.is_out_the_room = true;
		}
		if(instance_exists(Obj_monster_PARENT)){
			Obj_monster_PARENT.resize_screen = true;
			Obj_monster_PARENT.x = spawn_monster;
			Obj_monster_PARENT.is_close_to_player = false;
		}
		Scr_handle_instance_menu(true);
		Obj_pj.close_against_player = false;
		Obj_pj.combo = 1;
		
		
}
