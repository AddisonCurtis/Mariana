draw_set_halign(fa_left);
draw_set_font(fnt_options);
draw_set_color(c_black);

for (var i=0; i<array_length_1d(menu); i++) {
		draw_text(x + spacing, y + (i*spacing), menu[i]);
}

with (obj_menu_diver_dummy) {
	x = other.x;
	y = other.y + (other.selectedChoice*other.spacing) + 30;
}
