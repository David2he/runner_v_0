close_against_player = false;
reset_frame = false;
hits_left = 0;
combo = 0;
is_fighting = false;
is_running_back = false;
gold = 0; 
alternate_att_run = true;
monster_in_fight = 0;

will_be_a_crit = false;
damage = 20;
crit_rate = 0.1;
crit_bonus_damage = 1.5;
initial_movement_speed = 1;
movement_speed = initial_movement_speed;
first_attack = damage + movement_speed/5;
first_attack_critted = (damage + movement_speed/5) * crit_bonus_damage

running_counter = 0;



decrementor_speed_little = 1/40;
decrementor_speed_strong = 1/20;
incrementor_speed_restart = 1/80;

reduce_movement_speed = initial_movement_speed;
bonus_early_flor_speed = -6;


global.flor = 945;
global.scale_ratio = 1.5;
Obj_pj.image_xscale = global.scale_ratio;
Obj_pj.image_yscale = global.scale_ratio;

y = global.flor - (sprite_get_height(Spr_player_idle)*global.scale_ratio);
show_debug_message(y);