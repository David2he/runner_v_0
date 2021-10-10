random_sprite = irandom(4);
random_curve = irandom(3);
random_rotate_x_y = irandom(1);

sprite_index = asset_get_index("Spr_loot_" + string(random_sprite));
curve = animcurve_get_channel(AnimationCurve1, "curve" + string(random_curve));
percent = 0;

player_take_it = false;
stop = false;


if(random_rotate_x_y == 0){
	x_goal = xstart - (random_range(0, 600)); 
	rotate_sprite = irandom_range(-4, -6);
} else{
	x_goal = xstart + (random_range(0, 600));
	rotate_sprite = irandom_range(4, 6);
}
yTop = random_range(100, 300)


alarm[1] = 5* room_speed;
miss_it = false;