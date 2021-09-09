
function Scr_handle_Damage(){
	var target = argument[0];
	var dammage = argument[1];
	
	target.hp -= dammage;
	
	if(dammage >= target.hp){
		target.is_dead = true;
	}
}