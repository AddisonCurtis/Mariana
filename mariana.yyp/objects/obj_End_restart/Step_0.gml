var menuMovement = 0;
menuMovement -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);
menuMovement += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);

if (menuMovement != 0) {
	selectedChoice += menuMovement;
	if (selectedChoice < 0) {
		selectedChoice = array_length_1d(menu) - 1;
	} else if (selectedChoice >= array_length_1d(menu)) {
		selectedChoice = 0;
	}
}

if (max(keyboard_check_released(vk_enter), keyboard_check_released(vk_space), 0)) {
	switch (selectedChoice) {
		case 0: room_goto(room_first); break;
		case 1: game_end(); break;
		default: break;
	}
}
