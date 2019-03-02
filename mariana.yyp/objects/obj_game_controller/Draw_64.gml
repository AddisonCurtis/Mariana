// Drawing health meter
draw_set_color(c_black);
draw_rectangle(10, display_get_gui_height()-105, 40, display_get_gui_height()-5, false);

draw_set_color(c_white);
draw_rectangle(15, display_get_gui_height()-100, 35, display_get_gui_height()-10, false);

draw_set_color(c_red);
if (hp > 100) { // If the player has the health cheat on, set the health bar to be gold
	draw_set_color(make_color_rgb(255, 215, 0));	
}

if (hp > 0) {
	draw_rectangle(15, display_get_gui_height()-10 - hp, 35, display_get_gui_height()-10, false);
}


// Drawing ammo indicator


