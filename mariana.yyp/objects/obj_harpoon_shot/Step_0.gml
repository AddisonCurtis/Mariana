// Collison detection
for (var i=0; i<array_length_1d(collidables); i++) {
	// Instead of preventing a collision, let it overlap a bit and create a new "stuck" version of the shot
	if (place_meeting(x-hspeed/2, y-vspeed/2, collidables[i])) {
		with (instance_create_layer(x, y, "harpoon_shots", obj_harpoon_shot_stuck)) {
			image_angle = other.image_angle;
		}
		instance_destroy();
		exit;
	}
}

// Slow down shot from friction and apply "gravity"
if (abs(hspeed) > 0.1) {
	hspeed *= 0.995;
}
vspeed += 0.06;

// Make sure the shot's pointing in the right direction
image_angle = point_direction(x, y, x+hspeed, y+vspeed);
