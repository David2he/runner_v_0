// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_display_damage(){
	var ammount_damage = argument[0];
	var target = argument[1];
	var color = argument[2];
	
	var randomize_pos_x = irandom_range(4, 25)
	
	var instance_damage_drawned = instance_create_depth(target.x + randomize_pos_x, target.y - (sprite_get_height(sprite_index) + randomize_pos_x), -2, Obj_draw_dammage);
	instance_damage_drawned.ammount_damage = ammount_damage;
	instance_damage_drawned.what_color = color;
}