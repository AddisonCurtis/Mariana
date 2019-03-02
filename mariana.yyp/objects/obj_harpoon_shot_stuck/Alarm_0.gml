visible = !visible;
alarm[0] = (countdown--/50) * room_speed; // Flash faster as it gets closer to vanishing

if (countdown <= 0) {
	instance_destroy(self);
}
countdown = countdown -1;