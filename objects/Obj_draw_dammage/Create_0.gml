ammount_damage = undefined; 
what_color = undefined;

size_supp = 0.5;
down_animation = false;

random_x = irandom_range(-2, 2);

alarm[0] = room_speed * 0.5;



curve = animcurve_get_channel(AnimationCurve2, "curve0");
stop_animation = false;
percent = 0;