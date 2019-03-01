alarm[0] = room_speed; // Flash faster as it gets closer to vanishing
visible = !visible;

if (countdown <= 0) {
	instance_destroy(self);
}
