// Collison detection
// For now, just add new collidable objects to this array-
// (This must be done for every object that can collide, every time some new collidable is added)

// We keep checking collision so that if the object it's stuck to vanishes, it will turn back into a live shot
var collidables = [obj_block, obj_weak_block];

for (var i=0; i<array_length_1d(collidables); i++) {
	// Instead of preventing a collision, let it overlap a bit and create a new "stuck" version of the shot
	if (!place_meeting(x, y, collidables[i])) {
		with (instance_create_layer(x, y, "harpoon_shots", obj_harpoon_shot_stuck)) {
			image_angle = other.image_angle;
		}
		instance_destroy(self);
		break;
	}
}
