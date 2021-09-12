
function Scr_handle_Damage(){
	var target = argument[0];
	var dammage = argument[1];
	
	
	target.hp -= dammage;
	Scr_dispay_damage(dammage, target, c_red);
	
	if(target.hp <= 0){
		combo = 0;
		Obj_pj.close_against_player = false;
		target.is_dead = true;
	}
}