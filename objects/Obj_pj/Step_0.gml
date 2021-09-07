if(close_against_player){
	start_fight = true;
}

if(start_fight){
	Scr_first_attack(Obj_monster.hp, damage);
}

//show_debug_message("frame :" + string(Obj_pj.image_index));
//show_debug_message(Obj_pj.reset_frame);

