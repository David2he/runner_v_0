draw_self();
draw_set_font(Font_lighter);

for(stats_loop = 0; stats_loop < array_length(all_displayable_stats); stats_loop++){
	draw_set_halign(fa_left);
	draw_text(x + 15, initial_y_draw_stats + (20* stats_loop), all_displayable_stats[stats_loop][0]);
	draw_set_halign(fa_right);
	draw_text(x + sprite_width - 15, initial_y_draw_stats + (20* stats_loop), all_displayable_stats[stats_loop][1]);
}

draw_set_font(Font_base);