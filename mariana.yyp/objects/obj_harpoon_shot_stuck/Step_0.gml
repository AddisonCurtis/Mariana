// Collison detection

// We keep checking collision so that if the object it's stuck to vanishes, it will turn back into a live shot
var colliding = false;

for (var i=0; i<array_length_1d(collidables); i++) {
	// Instead of preventing a collision, let it overlap a bit and create a new "stuck" version of the shot
	colliding = place_meeting(x, y, collidables[i]);
	if (colliding) {
		break;
	}
}

if (!colliding) {
		with (instance_create_layer(x, y, "harpoon_shots", obj_harpoon_shot)) {
			image_angle = other.image_angle;
		}
		instance_destroy();
}
