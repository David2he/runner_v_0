
function Scr_screen_ratio(){
	if(room_width >= 1920){
		layer_background_sprite("Background_00", Spr_bg_desert_02__1080);
		layer_background_sprite("Background_00", Spr_bg_desert_00__1080);
		layer_background_sprite("Background_00", Spr_bg_desert_01__1080);
		layer_background_sprite("Background_00", Spr_bg_desert_03__1080);
		layer_background_sprite("Background_00", Spr_bg_desert_05__1080);
		layer_background_sprite("Background_00", Spr_bg_desert_04__1080);
	}else {
		layer_background_sprite("Background_00", Spr_bg_desert_02__720);
		layer_background_sprite("Background_00", Spr_bg_desert_00__720);
		layer_background_sprite("Background_00", Spr_bg_desert_01__720);
		layer_background_sprite("Background_00", Spr_bg_desert_03__720);
		layer_background_sprite("Background_00", Spr_bg_desert_05__720);
		layer_background_sprite("Background_00", Spr_bg_desert_04__720);
	}
}