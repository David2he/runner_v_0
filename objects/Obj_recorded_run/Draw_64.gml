draw_sprite(Spr_time_counter_pannel, -1, x, y);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(Font_base);
draw_text(x + 35, y + sprite_height/2, string(Obj_pj.running_counter));

