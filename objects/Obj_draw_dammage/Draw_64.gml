draw_set_halign(fa_center);
draw_set_font(Font_damage);

var xx, yy;
xx = x;
yy = y-2;

draw_set_color(c_black);
draw_text_transformed_color(xx +2, yy +4, string(ammount_damage), size_supp, size_supp, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_color(xx -2, yy , string(ammount_damage), size_supp, size_supp, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_color(xx, yy +4, string(ammount_damage), size_supp, size_supp, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_color(xx +2, yy, string(ammount_damage), size_supp, size_supp, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_color(xx, yy , string(ammount_damage), size_supp, size_supp, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_color(xx -2, yy, string(ammount_damage), size_supp, size_supp, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_color(xx -2, yy +4, string(ammount_damage), size_supp, size_supp, 0, c_black, c_black, c_black, c_black, 1);
draw_text_transformed_color(xx +2, yy , string(ammount_damage), size_supp, size_supp, 0, c_black, c_black, c_black, c_black, 1);





draw_text_transformed_color(x, y, string(ammount_damage), size_supp, size_supp, 0, what_color, what_color, what_color, what_color, 1);
draw_set_font(Font_base);
draw_set_color(c_white);