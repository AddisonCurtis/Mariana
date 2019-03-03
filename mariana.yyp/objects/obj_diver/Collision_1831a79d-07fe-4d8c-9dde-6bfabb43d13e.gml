if (obj_game_controller.hp < 100) {
	instance_destroy(other);
	audio_play_sound(Snd_pickup,10,false);
	obj_game_controller.hp = clamp(obj_game_controller.hp + 25, 0, 100);
}
