
function Scr_handle_Damage(){
	var target = argument[0];
	var dammage = argument[1];
	
	show_debug_message(target.hp);
	target.hp -= dammage;
	show_debug_message(target.hp);
	
	if(target.hp <= 0){
		combo = 0;
		Obj_pj.close_against_player = false;
		target.is_dead = true;
	}
}