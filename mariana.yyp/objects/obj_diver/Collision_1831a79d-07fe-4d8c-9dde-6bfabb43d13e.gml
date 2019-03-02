if (obj_game_controller.hp < 100) {
	instance_destroy(other);
	obj_game_controller.hp = clamp(obj_game_controller.hp + 25, 0, 100);
}
