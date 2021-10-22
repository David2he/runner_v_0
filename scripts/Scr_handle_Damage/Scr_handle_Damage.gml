
function Scr_handle_damage(){
	var target = argument[0];
	var damage = argument[1];
	
	var calcul_crit = Obj_pj.crit_rate;
	var is_a_crit = false;
	var color = c_white;
	//show_debug_message(target);

	if((random_range(0,1) <= calcul_crit) || (Obj_pj.will_be_a_crit)){
		Obj_pj.will_be_a_crit = false;

		damage = damage * Obj_pj.crit_bonus_damage;
		is_a_crit = true;
		color = c_red;
	}
		
	target.hp -= damage;
	target.hitted = true;
	Scr_display_damage(damage, target, color);
	
	if(target.hp <= 0){
		target.hitted = false;
		combo = 0;
		Obj_pj.close_against_player = false;
		target.is_dead = true;
	}
}