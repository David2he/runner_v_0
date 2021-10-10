
close_against_player = false;
reset_frame = false;
hits_left = 0;
combo = 0;
is_fighting = false;
count_enemies_cac = 1;
is_running_back = false;
gold = 0; 
alternate_att_run = true;
monster_in_fight = 0;

will_be_a_crit = true;
damage = 20;
crit_rate = 0.5;
crit_bonus_damage = 1.5;
initial_moovement_speed = 1;
moovement_speed = initial_moovement_speed;
first_attack = damage + moovement_speed/5;
first_attack_critted = (damage + moovement_speed/5) * crit_bonus_damage

decrementor_speed_little = 1/40;
decrementor_speed_strong = 1/20;
incrementor_speed_restart = 1/80;

reduce_moovement_speed = initial_moovement_speed;