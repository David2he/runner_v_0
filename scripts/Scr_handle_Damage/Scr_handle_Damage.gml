
function Scr_handle_Damage(){
	var target = argument[0];
	var dammage = argument[1];
	
	target.hp -= dammage;
	
	if(dammage >= target.hp){
		combo = 0;
		Obj_pj.close_against_player = false;
		target.is_dead = true;
	}
}