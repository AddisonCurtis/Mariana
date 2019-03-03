if (obj_game_controllerdead) {
	draw_set_color(c_red);
	draw_text(display_get_gui_width()/9 , display_get_gui_height()/2, "You died. Press escape to return to the menu");
}


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
	var val = clamp(hp, 0, 100);
	draw_rectangle(15, display_get_gui_height() - val, 35, display_get_gui_height()-10, false);
}
